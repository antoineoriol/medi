class QuestionsController < ApplicationController
  def create
    @question = Question.new(user_id: current_user.id, content: params[:question][:content])
    if @question.save
      @answer = Answer.create(question_id: @question.id, content: call_client)
      @answer.content.split("\n")&.map { |element| element.gsub("\n", "") }.reject(&:empty?).each do |task_content|
        Task.create(answer_id: @answer.id, content: task_content)
      end
      redirect_to question_answer_tasks_path(@question, @answer)
    else
      render :new
    end
  end

  def new
    @question = Question.new
  end

  private

  def call_client
    client = OpenAI::Client.new
    response = client.completions(
      parameters: {
        model: "text-davinci-001",
        prompt: "#{@question.content}, renvoie moi un array de 5 meilleures remedes de grand mere",
        max_tokens: 300
      }
    )
    response['choices']&.first&.dig('text')
  end

  def question_params
    params.require(:question).permit(:content)
  end
end

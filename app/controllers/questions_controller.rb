class QuestionsController < ApplicationController
  def create
    @question = Question.new(user_id: current_user.id, content: params[:question][:content])
    if @question.save
      @answer = Answer.create(question_id: @question.id, content: call_client)
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
        max_tokens: 100
      })
    response.dig('choices')&.first&.dig('text')
  end

  # def sanitize_and_format(answer)
  #   text = answer.join(", ")
  #   list = text.split("\n")
  #   list.delete("")
  #   list.map! { |item| "<li class='list-group-item'>#{item}</li>" }
  #   list.join("\n")
  # end

  def question_params
    params.require(:question).permit(:content)
  end
end

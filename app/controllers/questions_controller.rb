class QuestionsController < ApplicationController
  def create
    @question = Question.new(user_id: current_user.id, content: params[:question][:content])
    if @question.save
      sleep 2
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

  def edit
    @question = Question.find(params[:id])
  end

  def update
    @question = Question.find(params[:id])
    @question.update(question_params)
    @answer = Answer.create(question_id: @question.id, content: call_client)
    @answer.content.split("\n")&.map { |element| element.gsub("\n", "") }.reject(&:empty?).each do |task_content|
      Task.create(answer_id: @answer.id, content: task_content)
    end
    redirect_to question_answer_tasks_path(@question, @answer)
  end

  private

  # def call_client
  #   client = OpenAI::Client.new
  #   response = client.completions(
  #     parameters: {
  #       model: "text-davinci-003",
  #       prompt: "Renvoie moi uniquement sous forme de listes les 5 meilleures solutions simple d'automédication autre qu'avec des médicaments pour soigner ces symptômes : #{@question.content}.",
  #       max_tokens: 300,
  #       temperature: 0.5,
  #     }
  #   )
  #   response['choices']&.first&.dig('text')
  # end

  def call_client
    client = OpenAI::Client.new
    response = client.chat(
      parameters: {
        model: "gpt-3.5-turbo",
        temperature: 0.1,
        messages: [
          {
            role: "user",
            content: "Renvoie moi uniquement sous forme de listes les 5 meilleures solutions simple d'automédication autre qu'avec des médicaments pour soigner ces symptômes : #{@question.content}.!"
          }
        ]
      })
    response.dig("choices", 0, "message", "content")
  end

  def question_params
    params.require(:question).permit(:content)
  end
end

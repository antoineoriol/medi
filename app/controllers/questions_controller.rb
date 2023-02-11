class QuestionsController < ApplicationController
  def create
    @question = Question.new(user_id: current_user.id, content: params[:question][:content])
    @question.save
    if @question.save
      @answer = Answer.create(question_id: @question.id, content: sanitize_and_format(call_client))
      redirect_to question_answer_path(@question, @answer)
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
        model: "text-davinci-003",
        prompt: "#{@question.content}, peux-tu me dire que sous forme de liste de 8 éléments maximum quoi faire avec des remèdes de grand-mère ?",
        max_tokens: 400
      })
    response["choices"].map { |c| c["text"] }
  end

  def sanitize_and_format(answer)
    text = answer.join(", ")
    list = text.split("\n")
    list.delete("")
    list.map! { |item| "<li class='list-group-item'>#{item}</li>" }
    list.join("\n")
  end

  def question_params
    params.require(:question).permit(:content)
  end
end

class AnswersController < ApplicationController
  before_action :set_question, only: %i[new create]

  def create
    @answer = Answer.new(answer_params)
    @answer.questions_id = @question.id
    if @answer.save
      redirect_to question_answer_tasks
    else
      render :new
    end
  end

  def new
    @answer = Answer.new
  end

  private

  def set_question
    @question = Question.find(params[:question_id])
  end

  def answer_params
    params.require(:answer).permit(:content)
  end
end

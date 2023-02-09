class AnswersController < ApplicationController
  before_action :set_question, only: %i[create new]
  before_action :set_answer, only: %i[show]

  def create
    @answer = Answer.new(question_id: @question.id, content: params[:answer][:content])
    if @answer.save
      redirect_to question_answer_path(@question, @answer)
    else
      render :new
    end
  end

  def new
    @answer = Answer.new
  end

  def show
  end

  private

  def set_answer
    @answer = Answer.find_by(question_id: params[:question_id])
  end

  def set_question
    @question = Question.find(params[:question_id])
  end

  def answer_params
    params.require(:answer).permit(:content)
  end
end

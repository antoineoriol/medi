class AnswersController < ApplicationController
  before_action :set_question, only: %i[create new]
  before_action :set_answer, only: %i[show]

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

  def show
  end

  private

  def set_answer
    @answer = Answer.find_by(question: params[:question_id])
  end

  def set_question
    @question = Question.find(params[:question_id])
  end

  def answer_params
    params.require(:question).permit(:content)
  end
end

class TasksController < ApplicationController
  before_action :set_answer, only: %i[create new index]
  before_action :set_question, only: %i[create new index]

  def index
    @tasks = Task.all
    respond_to do |format|
      format.html
      format.pdf do
        render pdf: "Tasks", template: "tasks/index", layout: "pdf"   # Excluding ".pdf" extension.
      end
    end
  end

  private

  def set_answer
    @answer = Answer.find(params[:answer_id])
  end

  def set_question
    @question = Question.find(params[:question_id])
  end

  def task_params
    params.require(:task).permit(:status)
  end
end

class TasksController < ApplicationController
  before_action :set_answer, only: %i[create new index]
  before_action :set_question, only: %i[create new index]

  def index
    @tasks = Task.all
  end

  def update
    @task = Task.find(params[:id])
    @task.update(status: true)
  end

  def destroy
    @task = Task.find(params[:id])
    @task.destroy
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

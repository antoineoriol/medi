class TasksController < ApplicationController
  before_action :set_answer, only: %i[create new index]
  before_action :set_question, only: %i[create new index]
  before_action :set_task, only: %i[update destroy]

  def index
    @tasks = Task.all
  end

<<<<<<< HEAD
  def destroy
    @task.destroy
  end

  def update
    @task.update(status: params[:status] == true)
    redirect_to question_answer_task_path(@question, @answer)
=======
  def update
    @task = Task.find(params[:id])
    @task.update(status: true)
  end

  def destroy
    @task = Task.find(params[:id])
    @task.destroy
>>>>>>> master
  end

  private

  def set_answer
    @answer = Answer.find(params[:answer_id])
  end

  def set_question
    @question = Question.find(params[:question_id])
  end

  def set_task
    @task = Task.find(params[:id])
  end

  def task_params
    params.require(:task).permit(:status)
  end
end

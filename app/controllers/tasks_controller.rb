class TasksController < ApplicationController
  before_action :set_task, only: %i[show destroy]
  before_action :set_answer, only: %i[create new index]
  before_action :set_question, only: %i[create new index]

  def show
  end

  def create
    @task = Task.new(answer_id: @answer.id, status: params[:task][:status])
    if @task.save
      redirect_to question_answer_tasks_path(@question, @answer)
    else
      render :new
    end
  end

  def new
    @task = Task.new
  end

  def index
    @tasks = Task.all
  end

  def destroy
  end

  private

  def set_task
    @task = Task.find_by(answer_id: params[:answer_id])
  end

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

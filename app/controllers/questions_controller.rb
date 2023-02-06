class QuestionsController < ApplicationController
  def create
    @question = Question.new(users_id: current_user.id, content: params[:question])
    @question.save
  end

  def new
    @question = Question.new
  end
end

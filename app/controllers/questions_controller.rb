class QuestionsController < ApplicationController
  def create
    @question = Question.new(user_id: current_user.id, content: params[:question][:content])
    @question.save
    if @question.save
      redirect_to new_question_answer_path(@question)
    else
      render :new
    end
  end

  def new
    @question = Question.new
  end
end

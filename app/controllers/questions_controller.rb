class QuestionsController < ApplicationController
  def create
    @question = Question.new(user_id: current_user.id, content: params[:question][:content])
    if @question.content == "" || @question.content == nil
      flash[:notice] = "Please enter a question"
      render :new
    else @question.save
      redirect_to new_question_answer_path(@question)
    end
  end

  def new
    @question = Question.new
  end
end

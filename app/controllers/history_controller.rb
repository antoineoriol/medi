class HistoryController < ApplicationController
  def index
    @questions = current_user.questions
    respond_to do |format|
      format.html
      format.pdf do
        render pdf: "History", template: "history/index", layout: "pdf"
      end
    end
  end
end

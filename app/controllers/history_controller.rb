class HistoryController < ApplicationController
  def index
    @questions = current_user.questions
  end
end

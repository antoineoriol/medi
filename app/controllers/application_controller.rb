class ApplicationController < ActionController::Base
  before_action :authenticate_user!, :set_locale

  private

  def set_locale
    I18n.locale = :fr # Or whatever logic you use to choose.
  end
end

class ApplicationController < ActionController::Base
  protect_form_forgery with: :exception
  before_action :set_current_user

  def set_current_user
    @current_user = User.find(session[:user_id]) if session[:user_id]
  end
end

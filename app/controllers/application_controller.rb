class ApplicationController < ActionController::Base
  before_action :set_current_user

  def set_current_user
    @current_user = User.find(session[:user_id]) if session[:user_id]
  end

  def authenticate_user
    unless @current_user
      flash[:notice] = "ログインしてください。"
      redirect_to login_path
    end
  end
end

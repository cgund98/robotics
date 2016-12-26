class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  helper_method :current_user
  helper_method :require_admin
  helper_method :require_user
  helper_method :already_signed_in
  helper_method :need_admin

  def already_signed_in
    redirect_to '/admin' if session[:userid]
  end
  def current_user
    @current_user ||= User.find(session[:user_id]) if session[:user_id]
  end
  def require_user
    redirect_to '/login' unless current_user
  end
  def require_admin
    redirect_to '/login' unless session[:user_id]
  end
  def need_admin
    redirect_to '/admin' unless current_user.role > 2
  end
end

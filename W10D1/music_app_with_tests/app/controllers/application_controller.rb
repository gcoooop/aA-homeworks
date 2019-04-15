class ApplicationController < ActionController::Base

  helper_method :current_user, :log_in!, :logged_in?

  def log_in!(user)
    session[:session_token] = user.reset_session_token!
  end

  def log_out!
    current_user.reset_session_token!
    session[:session_token] = nil
  end

  def logged_in?
    !!current_user
  end

  def ensure_logged_in
    redirect_to new_session_url unless logged_in?
  end

  def current_user
    @current_user ||= User.find_by(session_token: session[:session_token])
  end

end

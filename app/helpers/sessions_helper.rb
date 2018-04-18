module SessionsHelper

  def log_in(user)
    session[:user_id] = user.id
  end

  def current_user
    @current_user ||= User.find(session[:user_id])
  end

  def log_out
    reset_session
    @current_user = nil
  end

end

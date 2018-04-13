module SessionsHelper

  def log_in(user)
    session[:user_id] = @user.id
  end

  def current_user
    @current_user ||= User.find_by(session[:user_id])
  end

  def log_out
    session.delete(:user.id)
    @current_user = nil
  end

end

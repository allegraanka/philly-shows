class SessionsController < ApplicationController

  def new
  end

  def create
    puts params.inspect
    @user = User.find_by(username: params[:session][:username])
    if @user && @user.authenticate(params[:session][:password])
        log_in(@user)
        redirect_to dashboard_path @user
      else
        redirect_to login_error_path
      end
  end

  def destroy
    log_out
    redirect_to logout_path
  end

end

class SessionsController < ApplicationController

  def new
  end

  def create
    puts params.inspect
    @user = User.find_by(username: params[:session][:username])
      if @user && @user.password == (params[:session][:password])
        log_in(@user)
        redirect_to user_path @user
      else
        redirect_to root_path
      end
  end

  def destroy
    log_out
    redirect_to root_path
  end

end

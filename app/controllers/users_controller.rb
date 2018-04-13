class UsersController < ApplicationController

  def index
    current_user
    @users = User.all
  end

  def new
    @user = User.new
  end

  def create
    puts params.inspect
    @user = User.create(user_params)
    redirect_to user_path
  end

  def show
    @user = User.find(params[:id])
  end

  def destroy
    @deleted_user = User.delete(params[:id])
    redirect_to user_path
  end

  private

  def user_params
    params.require(:user).permit(:fname, :lname, :username, :email, :password)
  end

end

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
      if @user.save
        log_in(@user)
        redirect_to dashboard_path @user
      else
        render 'new'
      end
  end

  def show
    @user = User.find(params[:id])
    @post = Post.new
    @posts = @user.posts.all.order("created_at DESC")
    @comment = Comment.new
  end

  def dashboard
    @user = User.find(session[:user_id])
    @post = Post.new
    @posts = Post.all.order("created_at DESC")
  end

  def manage
    @user = User.find(session[:user_id])
  end

  def edit
    @user = User.find(session[:user_id])
  end

  def update
    user = User.find(session[:user_id])
    user.update(user_params)
    redirect_to user_path
  end

  def destroy
    delete_user
    redirect_to goodbye_path
  end

  def goodbye
  end

  # private methods
    private

    def user_params
      params.require(:user).permit(:fname, :lname, :username, :email, :password)
    end

end

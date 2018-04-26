class PostsController < ApplicationController

  def index
    @posts = Post.all.order("created_at DESC")
  end

  def show
    @post = Post.find(params[:id])
    @user = @post.user
    @comments = Comment.where({ post_id: @post })
  end

  def new
    @post = Post.new
  end

  def create
    puts params.inspect
    write_post
  end

  def update
    edit_post
  end

  def destroy
    delete_post
    redirect_to user_post_path
  end

  # private methods
    private

    def post_params
      params.require(:post).permit(:message)
    end

end

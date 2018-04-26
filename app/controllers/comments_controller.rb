class CommentsController < ApplicationController
  def new
    @comment = Comment.new
  end

  def create
    puts params.inspect
    write_comment
  end

  def index
    @comments = Comment.all.order("created_at DESC")
  end

  def show
    @comment = Comment.find(params[:id])
    @post = @comment.post
  end

  def update
    edit_comment
  end

  def edit
    @comment = Comment.find(params[:id])
    @post = @comment.post
  end

  def destroy
    delete_comment
    redirect_to user_post_path
  end

  private

  def comment_params
    params.require(:comment).permit(:comment, :post_id)
  end

end

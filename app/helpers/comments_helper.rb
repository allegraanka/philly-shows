module CommentsHelper

  def write_comment
    @comment = Comment.new(comment_params)
    @comment.user_id = session[:user_id]
    if @comment.save
      redirect_to dashboard_path(User.find(session[:user_id]))
    else
      render 'index'
    end
  end

  def edit_comment
    @comment = Comment.find(params[:id])
      if @comment.update(comment_params)
        redirect_to dashboard_path(User.find(session[:user_id]))
      else
        render 'show'
      end
  end

  def delete_comment
    @comment = Comment.find(params[:id])
    @comment.destroy
  end

end

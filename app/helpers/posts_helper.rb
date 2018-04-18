module PostsHelper

  def write_post
    @post = Post.new(post_params)
    @post.user_id = session[:user_id]
    if @post.save
      redirect_to dashboard_path(User.find(session[:user_id]))
    else
      render 'index'
    end
  end

  def edit_post
    @post = Post.find(params[:id])
      if @post.update(post_params)
        redirect_to dashboard_path(User.find(session[:user_id]))
      else
        render 'show'
      end
  end

  def delete_post
    @post = Post.find(params[:id])
    @post.destroy
  end

end

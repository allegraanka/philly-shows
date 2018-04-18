module UsersHelper

  def user_welcome
     if @user != nil
        content_tag :h1, "hi, #{@user.username}!"
     end
  end

  def user_profile
     if @user != nil
        content_tag :h1, "#{@user.username}"
     end
  end

  def user_since
     if @user != nil
        content_tag :h4, "phluxn around for #{time_ago_in_words(@user.created_at)}"
     end
  end

  def delete_user
    @delete_account = User.find(session[:user_id]).destroy
    session[:user_id] = nil
  end

end

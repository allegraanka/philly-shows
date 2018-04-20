class ApplicationController < ActionController::Base

  include SessionsHelper
  include UsersHelper
  include PostsHelper
  include CommentsHelper

end

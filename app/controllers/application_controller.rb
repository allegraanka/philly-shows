class ApplicationController < ActionController::Base

  include SessionsHelper
  include UsersHelper
  include PostsHelper

end

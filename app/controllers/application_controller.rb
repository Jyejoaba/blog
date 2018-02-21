class ApplicationController < ActionController::Base
  include ApplicationHelper #then go to posts_controller and do your thing
  protect_from_forgery with: :exception
end

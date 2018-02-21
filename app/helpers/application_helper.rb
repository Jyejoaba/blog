module ApplicationHelper
  def currern_user
    User.find_by(id: session[:user_id]) #then go to application_controller and do your thing
  end
end

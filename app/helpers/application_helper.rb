module ApplicationHelper

  def current_user
    user_id = session[:current_user]
    User.find(user_id) unless user_id.nil?
  end

end

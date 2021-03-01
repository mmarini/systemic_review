module ApplicationHelper

  def current_user
    user_id = session[:current_user]
    User.find(user_id) unless user_id.nil?
  end

  def clear_current_user
    session[:current_user] = nil
  end

  def set_current_user(user)
    session[:current_user] = user.id
  end

end

class ApplicationController < ActionController::Base

  include ApplicationHelper

  def check_user
    redirect_to new_user_path if current_user.nil?
  end

  protected

  def set_current_user(user)
    session[:current_user] = user.id
  end
end

class ApplicationController < ActionController::Base

  def check_user
    user = session[:current_user]
    redirect_to new_user_path if user.nil?
  end

end

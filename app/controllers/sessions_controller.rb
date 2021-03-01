class SessionsController < ApplicationController

  def destroy
    # limit to first 20 since I'm also displaying the status
    clear_current_user
    redirect_to new_user_path
  end

end

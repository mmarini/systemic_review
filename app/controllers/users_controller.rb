class UsersController < ApplicationController

  def new
    @user = User.new
  end

  def create
    params.permit(:name)
    user = User.find_or_create_by(name: params[:user][:name])
    set_current_user(user)
    redirect_to citations_path
  end

end

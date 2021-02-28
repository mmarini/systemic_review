class CitationsController < ApplicationController

  before_action :check_user

  def index
    @citations = Citation.all
  end

  def show
    @citation = Citation.find(params[:id])
  end
end

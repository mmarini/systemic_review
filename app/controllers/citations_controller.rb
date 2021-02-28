class CitationsController < ApplicationController

  before_action :check_user

  def index
    # limit to first 20 since I'm also displaying the status
    @citations = Citation.all.limit(20)
  end

  def show
    @citation = Citation.find(params[:id])
  end

  def review
    @citation = Citation.find(params[:id])
    @citation.review!(current_user, params[:commit] == 'Relevant')
    redirect_to citations_path
  end
end

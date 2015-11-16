class SitesController < ApplicationController
  def show
    @site = Site.find(params[:id])

    render json: @site, include: ['questions', 'questions.answers', 'resolutions']
  end
end

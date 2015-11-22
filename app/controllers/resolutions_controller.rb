class ResolutionsController < ApplicationController
  def show
    render json: Resolution.find(params[:id])
  end
end

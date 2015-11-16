class QuestionsController < ApplicationController
  def show
    render json: Question.find(params[:id]),
      include: ['answers', 'answers.resolution']
  end
end

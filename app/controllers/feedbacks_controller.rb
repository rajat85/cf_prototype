class FeedbacksController < ApplicationController
	skip_before_action :verify_authenticity_token

  def create
  	@feedback = Feedback.new(feedback_params)
  	if @feedback.save
      render :json => @feedback, :status => :created
    else
      render :json => @feedback.errors.full_messages, :status => :unprocessable_entity
    end

  end

  private

  def feedback_params
  	params.permit(:content, :attachment)
	end
end

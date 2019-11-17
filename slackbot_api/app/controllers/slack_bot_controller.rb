class SlackBotController < ApplicationController

  def create
    render :ok and return if params[:event][:subtype] == "bot_message"
    CheckAndPostToSlackJob.perform_later(allowed_params[:event])
    render :ok, json: { challenge: params[:challenge]}
  end

  def notification
    puts allowed_params[:text]
    CheckAndPostToSlackJob.perform_later(allowed_params)
    render :ok
  end

  def allowed_params
    params.permit!
  end

end

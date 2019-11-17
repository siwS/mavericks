class SlackBotController < ApplicationController


  def create
    puts params[:challenge]
    render :ok, json: { challenge: params[:challenge]}
  end

end

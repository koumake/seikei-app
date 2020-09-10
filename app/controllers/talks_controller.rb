class TalksController < ApplicationController

  def new
    @talks = Talk.all
    @talk = Talk.new
    @chat = Chat.find(params[:chat_id])
  end

  def create
    @talk = Talk.new(text: params[:talk][:text])
    if @talk.save
      ActionCable.server.broadcast 'talk_channel', content: @talk
    end
  end
end

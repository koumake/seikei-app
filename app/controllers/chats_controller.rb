class ChatsController < ApplicationController

  def index
    @chats = Chat.all
  end

  def new
    @chat = Chat.new
  end

  def create
    @chat = Chat.new(chat_params)
    @chat.save
    redirect_to root_path
  end

  def show
    @chat = Chat.find(params[:id])
  end



  private
  def chat_params
    params.require(:chat).permit(:name)
  end
end

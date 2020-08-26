class SpeaksController < ApplicationController

  def index
    @speak = Speak.new
    @group = Group.find(params[:group_id])
    @speaks = @group.speaks.includes(:user)
  end
  def create
    @group = Group.find(params[:group_id])
    @speak = @group.speaks.new(speak_params)
    if @speak.save
       redirect_to "/groups/#{@group.id}/speaks"
    else
        @speaks = @group.speaks.includes(:user)
        render :index
    end
  end

  private
  def speak_params
    params.require(:speak).permit(:content).merge(user_id: current_user.id)
  end
end

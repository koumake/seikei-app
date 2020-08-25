class MeetingsController < ApplicationController

  def index
    @meetings = Meeting.all
  end
  def new
    @meeting = Meeting.new
  end
  def create
    Meeting.create(meeting_params)
    redirect_to root_path
  end
  def destroy
    meeting = Meeting.find(params[:id])
    meeting.destroy
    redirect_to root_path
  end

  private
  def meeting_params
    params.require(:meeting).permit(:title, :date_time, :plece, :number, :target_person, :content).merge(user_id: current_user.id)
  end

end

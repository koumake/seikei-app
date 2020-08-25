class MeetingsController < ApplicationController

  def index
    @meetings = Meeting.all
  end
  def new
    @meeting = Meeting.new
  end
  def create
    Meeting.create(meeting_params)
  end

  private
  def meeting_params
    params.require(:meeting).permit(:title, :date_time, :plece, :number, :target_person, :content).merge(user_id: current_user.id)
  end

end

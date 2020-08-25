class MeetingsController < ApplicationController

  def index
    @meetings = Meeting.all
  end
  def new
    @meeting = Meeting.new
  end
  
end

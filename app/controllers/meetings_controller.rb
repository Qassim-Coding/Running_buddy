class MeetingsController < ApplicationController
  def index
    @meetings = Meeting.all
  end

  def create

    @relationship = Relationship.find(params[:relationship_id])
    @meeting = Meeting.new(meeting_params)
    @meeting.user = current_user

    if @meeting.save
      @user_meeting = UsersMeeting.new(meeting: @meeting, user_id: @relationship.receiver_id)
      @user_meeting.save
      redirect_to user_path(@relationship.receiver), notice: 'Meeting created!'
    else
      redirect_to user_path(@relationship.receiver), notice: 'Meeting not created :('
    end

  end

  private

  def meeting_params
    params.require(:meeting).permit(:date, :location, :weather_report)
  end
end

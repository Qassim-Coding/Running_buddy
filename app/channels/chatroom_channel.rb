class ChatroomChannel < ApplicationCable::Channel
  def subscribed
    relationship = Relationship.find(params[:id])
    stream_for relationship
  end

  def unsubscribed
    # Any cleanup needed when channel is unsubscribed
  end
end

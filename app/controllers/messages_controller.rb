class MessagesController < ApplicationController
  def create
    @relationship = Relationship.find(params[:relationship_id])
    @message = Message.new(message_params)
    @message.user = current_user
    @message.relationship = @relationship
    if @message.save
      ChatroomChannel.broadcast_to(
        @relationship,
        render_to_string(partial: "message", locals: {message: @message})
      )
      head :ok

    else
      render "relationships/show", status: :unprocessable_entity

    end
  end

  private

  def message_params
    params.require(:message).permit(:content)
  end
end

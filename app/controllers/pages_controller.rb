class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:home]
  def home
  end

  def dashboard
    # l'utilisateur concerné est celui qui est actuellement connecté
    @user = current_user
    # l'utilisateur connecté peut voir ses meetings
    @meetings = Meeting.where(user_id: @user.id)
    # l'utilisateur connecté peut voir ses relations
    @relationships = Relationship.where(asker_id: @user.id)
    # l'utilisateur connecté peut voir ses messages
    @messages = @user.received_messages
  end
end

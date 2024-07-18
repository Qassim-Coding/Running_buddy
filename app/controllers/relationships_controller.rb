class RelationshipsController < ApplicationController

  def show
    @user = current_user
    @relationship = Relationship.find(params[:id])
  end

  def create
    @relationship = Relationship.new
    @relationship.asker = current_user
    @relationship.receiver = User.find(params[:relationship][:receiver_id])
    @relationship.status = "accepted"
    if @relationship.save
      redirect_to user_path(@relationship.receiver), notice: 'relationship accepted!'
    else
      redirect_to user_path(@relationship.receiver), notice: 'relationship  request not sent :('
    end
  end
end

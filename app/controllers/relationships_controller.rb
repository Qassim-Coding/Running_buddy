class RelationshipsController < ApplicationController

  def create
    @relationship = Relationship.new
    @relationship.asker = current_user
    @relationship.receiver = User.find(params[:relationship][:receiver_id])
    @relationship.status = "pending"
    raise

  end
end

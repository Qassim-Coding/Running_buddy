class RelationshipsController < ApplicationController
  def new
    @relationship = Relationship.new
  end

  def create
    @relationship = Relationship.new(relationship_params)
    @relationship.asker = current_user
    @relationship.receiver = other_user
  end
end

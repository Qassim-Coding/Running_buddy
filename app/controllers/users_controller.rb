class UsersController < ApplicationController

  def show
    @user = User.find(params[:id])
    @other_users = User.where.not(id: current_user.id)
  end
end

class UsersController < ApplicationController

  def show
    @user = User.find(params[:id])
    @other_users = User.where.not(id: current_user.id)
  end

  def user_params
    params.require(:user).permit(:last_name, :first_name, :address, :picture, :descritption, :phone_number, :running_pace)
  end
end

class UsersController < ApplicationController
  def show
    @user = User.find(params[:id])
    @relationships_as_asker = current_user.relationships_as_asker.where(receiver:@user)
    @relationships_as_receiver = current_user.relationships_as_receiver.where(asker:@user)
    @relationships = @relationships_as_asker + @relationships_as_receiver
    @meeting = Meeting.new
  end

  def user_params
    params.require(:user).permit(:last_name, :first_name, :address, :picture, :descritption, :phone_number, :running_pace)
  end

end

class UserController < ApplicationController

  def create
    user = User.create!(user_params)
    redirect_to user_path(user.id)
  end

  def new
    @user = User.new
  end

  private

  def user_params
    params.require(:user).permit(:initials, :birthdate)
  end

end

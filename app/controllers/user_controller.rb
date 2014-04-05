class UserController < ApplicationController

  def create
    user = User.create(user_params)
    redirect_to user_path(user.id)
  end

  def new
    @user = User.new
  end

  def show
    @hrlog = {}
    @user = User.find_by(id: params[:id])
    Heartlog.where(user_id: @user.id).all.each{ |log| @hrlog.merge!({log.logdate => log.heartrate}) }
  end

  private

  def user_params
    params.require(:user).permit(:initials, :birthdate, :password)
  end

end

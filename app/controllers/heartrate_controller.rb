class HeartrateController < ApplicationController

  def create
    @user = User.find_by(initials: params[:initials])
    if @user != nil
      Heartlog.create(user_id: @user.id, logdate: Time.now, heartrate: params[:heartrate])
      redirect_to user_path(@user.id)
    else
      @error = "User initials not found"
      render :index
    end
  end

  # private

  # def user_params
  #   params.require(:Heart).permit(:initials, :birthdate, :password)
  # end
end

class HeartrateController < ApplicationController

  def create
    @user = User.find_by(initials: params[:initials])
    Heartlog.create(user_id: @user.id, hr: params[:heartrate])
    p params
    redirect_to user_index_path
  end
end

class HeartrateController < ApplicationController
  
  def create
     # Users.find_by(initials: params[])
    p params
    redirect_to user_index_path
  end
end

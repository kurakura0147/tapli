class UsersController < ApplicationController

  def show
    @user = User.find(current_user.id)
    @data = Datum.where(user_id: current_user.id).order("record_day DESC")
  end

end

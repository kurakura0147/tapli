class UsersController < ApplicationController

  def show
    @user = User.find(current_user.id)
    @data = Datum.where(user_id: current_user.id)
    @user_data = @data.order("record_day DESC").limit(1)
    @gragh_data = @data.order("record_day ASC")
    @weight_data = @gragh_data.pluck(:weight)
    @height_data = @gragh_data.pluck(:height)
    @day_data = @gragh_data.pluck(:record_day)

    weight = []
    @weight_data.each do |num|
      weight << num
    end

    height = []
    standard_weight = []
    @height_data.each do |num|
      height << num
      standard = (num.to_i)**2 * 22/10000
      standard_weight << standard
    end

    day = []
    @day_data.each do |num|
      day << num
    end

    gon.height = height
    gon.weight = weight
    gon.standard_weight = standard_weight
    gon.day = day

  end

end

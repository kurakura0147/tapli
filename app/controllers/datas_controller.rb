class DatasController < ApplicationController

    before_action :authenticate_user!, except: [:sample, :about ]

  def index
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

  def new
    @data = Datum.new
  end

  def create
    @data = Datum.new(params_datum)
    @data.save!
    redirect_to user_path
  end

  def show
    @data = Datum.find()
  end

  def edit
    @user = User.find(current_user.id)
    @data = Datum.includes(:user).find(13)
  end

  def update
    @data = Datum.includes(:user).find(13)
    @data.update(params_datum)
    redirect_to user_path
  end

  def about
  end

  def sample
    @add = [10]
    gon.add = @add
    @data = [1,9,3]
    gon.data = @data
    gon.data << gon.add
  end

  private

  def params_datum
    params.require(:datum).permit(:weight, :height, :record_day).merge(user_id: current_user.id)
  end

end

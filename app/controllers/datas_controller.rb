class DatasController < ApplicationController

    before_action :authenticate_user!, except: [:sample, :about ]


  def index
  end

  def new
    @data = Datum.new
  end

  def create
    @data = Datum.new(params_datum)
    @data.save!
    redirect_to root_path
  end

  def show
    @data = Datum.find(1)
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

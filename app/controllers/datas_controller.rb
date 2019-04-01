class DatasController < ApplicationController

    before_action :authenticate_user!, except: [:sample, :about ]

  def index
    @user = User.find(current_user.id)
    @data = Datum.where(user_id: @user).order("record_day ASC")
  end

  def new
    @data = Datum.new
  end

  def create
    @data = Datum.new(params_datum)
    @data.save!
    redirect_to user_path(id: current_user.id)
  end

  def edit
    @data = Datum.find(params[:id])
  end

  def update
    @data = Datum.find(params[:id])
    @data.update(params_datum)
    redirect_to :action => 'index'
  end

  def destroy
    @data = Datum.find(params[:id])
    @data.destroy
    redirect_to :action => 'index'
  end

  def about
  end

  def sample
  end

  private

  def params_datum
    params.require(:datum).permit(:weight, :height, :record_day).merge(user_id: current_user.id)
  end

end

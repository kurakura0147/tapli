class DatasController < ApplicationController

  def index
  end

  def show
  end

  def about
  end

  def sample
    @add = [9]
    gon.add = @add
    @data = [1,2,3]
    gon.data = @data
    gon.data << gon.add
  end

end

class HeyaController < ApplicationController
  protect_from_forgery :except => [:create]
  def index
  end

  def show
    @datas = Heya.all
    puts @datas
  end

  def create
    record = Heya.new
    record.temperature = params[:temperature]
    record.humidity = params[:humidity]
    record.date = params[:date]
    record.save
    render :index
  end

end

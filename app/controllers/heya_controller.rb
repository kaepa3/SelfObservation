class HeyaController < ApplicationController
  protect_from_forgery :except => [:create]
  def index
  end

  def show
    @datas = Heya.order(:date).limit(10)
    date_start = Time.now.utc.beginning_of_day
    date_end = Time.now.utc.end_of_day

    records = Heya.where(date: date_start..date_end).order(:date)
    @chart_data  = records.map{|x| [x.date, x.temperature] }
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

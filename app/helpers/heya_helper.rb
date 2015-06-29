#
require 'open-uri'
#部屋のヘルパな
module HeyaHelper
  def get_datetime(params)
    date = Time.zone.now
    date = Time.parse(params[:select_date]) unless params[:select_date].blank?
    puts date.beginning_of_day
    puts Time.zone.now
    puts "============================"
    [date.beginning_of_day, date.end_of_day]
  end

  def today_forecasts(id)
    url = 'http://weather.livedoor.com/forecast/webservice/json/v1?city=' + id.to_s
    open(url).read
  end
end

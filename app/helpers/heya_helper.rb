#
require 'open-uri'
#部屋のヘルパな
module HeyaHelper
  def get_datetime(params)
    date = Time.zone.now
    date = Time.parse(params[:select_date]) unless params[:select_date].blank?

    [date.beginning_of_day, date.end_of_day]
  end

  def today_forecasts(id)
    url = 'http://weather.livedoor.com/forecast/webservice/json/v1?city=' + id.to_s
    return open(url).read
  end
end

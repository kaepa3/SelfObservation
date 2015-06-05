#
module HeyaHelper
  def get_datetime(params)
    date = Time.zone.now
    date = Time.parse(params[:select_date]) unless params[:select_date].blank?

    [date.beginning_of_day, date.end_of_day]
  end
end

require 'rails_helper'
require 'json'
# Specs in this file have access to a helper object that includes
# the HeyaHelper. For example:
#
# describe HeyaHelper do
#   describe "string concat" do
#     it "concats two strings with spaces" do
#       expect(helper.concat_strings("this","that")).to eq("this that")
#     end
#   end
# end
RSpec.describe HeyaHelper, type: :helper do
  it "天気予報を取得する" do
    json = today_forecasts(140010)
    responce = JSON.parse(json.to_s)
    responce["forecasts"].each do |data|
      if data["dateLabel"] == "今日"
        puts data
      end
    end
    expect(json.length).not_to eq(0)
  end

end

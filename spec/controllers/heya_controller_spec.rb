require 'rails_helper'

RSpec.describe HeyaController, type: :controller do

  describe "GET #index" do
    it "returns http success" do
      get :index
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET #show" do
    it "returns http success" do
      get :show
      expect(response).to have_http_status(:success)
    end
  end

  describe "Post #create" do
    it "returns http success" do
      post :create, temperature: 20,humidity:10,date:'2015-06-21 1:10:00'
      expect(response).to have_http_status(:success)
      records = Heya.all
      records.each do |record|
        pp record
      end
      date_start ,date_end = controller.view_context.get_datetime select_date: '2015-6-21'
      extraction_records = Heya.where(date: date_start..date_end).order('date ASC')
      pp extraction_records

    end
  end
end

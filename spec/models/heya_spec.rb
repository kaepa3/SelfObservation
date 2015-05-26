require 'rails_helper'

RSpec.describe Heya, type: :model do
  before(:each) do
    Heya.delete_all
  end

  it "Task Model Save" do
    record = Heya.new
    record.temperature
    record.humidity
    record.save
    expect(Heya.count).to eq(1)
  end

  after(:each) do
    Heya.delete_all
  end
end

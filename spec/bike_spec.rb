require 'bike'

describe Bike do
  bike = Bike.new
  
  it 'is working' do
    expect(bike).to be_working
  end
  
end
require_relative '../lib/bike'

describe Bike do

  it 'responds to working?' do
    expect(Bike.new).to respond_to(:working?)
  end
  
  # it 'is working' do
  #   expect(bike).to be_working
  # end

end
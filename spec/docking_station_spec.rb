require 'docking_station'

describe DockingStation do 
  it 'exists' do
    expect(DockingStation.new).to be_an_instance_of DockingStation
  end

  it { is_expected.to respond_to :release_bike }
end
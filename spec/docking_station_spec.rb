require_relative '../lib/docking_station'

describe DockingStation do 
  it 'responds to release_bike' do
    expect(DockingStation.new).to respond_to(:release_bike)
  end
  # it { is_expected.to respond_to :release_bike}

  it 'releases working bikes' do
    bike = subject.release_bike
    expect(bike).to be_working
  end

  describe '#bike' do

    it 'responds to bike' do
      expect(DockingStation.new).to respond_to(:bike)
    end 

    it 'returns docked bikes' do
      bike = Bike.new
      subject.dock(bike)
      expect(subject.bike).to eq bike
    end

  end
      

  describe '#dock' do

    it 'docks a bike' do
      expect(DockingStation.new).to respond_to(:dock)
    end

    it 'responds to #dock with one argument' do
      expect(DockingStation.new).to respond_to(:dock).with(1).argument
    end

    it "docks the bike" do
      bike = Bike.new
      # We want to return the bike we dock
      expect(DockingStation.new.dock(bike)).to eq (bike)
    end  
  end 

end
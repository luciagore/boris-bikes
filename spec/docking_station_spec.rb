require_relative '../lib/docking_station'

describe DockingStation do 


  describe '#release_bike' do
    it 'responds to release_bike' do
      expect(DockingStation.new).to respond_to(:release_bike)
    end

    it { is_expected.to respond_to :release_bike}

    it 'release a bike' do
      bike = Bike.new
      subject.dock(bike) 
      subject.release_bike
      expect(subject.bikes).not_to include(bike)
    end

    it 'we expect it to release the docked bike' do
      bike = Bike.new
      subject.dock(bike)
      expect(subject.release_bike).to eq bike
    end

    it 'raises an error when there are no bikes' do
      expect {subject.release_bike}.to raise_error
    end
  end

  describe '#bike' do

    it 'responds to bike' do
      expect(DockingStation.new).to respond_to(:bikes)
    end 

    it 'returns docked bikes' do
      bike = Bike.new
      subject.dock(bike)
      expect(subject.bikes).to eq bike
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

    it "raises an error when dock capacity is full" do
      docking_station = subject.dock(Bike.new)
      expect{ docking_station.dock(Bike.new)}.to raise_error
    end  

    it 'raises an error when there are more than 20 bikes' do
      station = DockingStation.new
      20.times { station.dock(Bike.new) }
      expect{station.dock(Bike.new)}.to raise_error
    end
  end 

end
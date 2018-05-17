require_relative '../lib/docking_station'

describe DockingStation do

  describe '#initialize' do
    it 'has a default capacity' do
      expect(subject.capacity).to eq DockingStation::DEFAULT_CAPACITY
    end
    it 'has a variable capacity' do
      expect(DockingStation.new(50).capacity).to eq 50
    end
    it 'fails when maximum capacity is reached' do
      station = DockingStation.new(5)
      expect{6.times { station.dock(Bike.new) }}.to raise_error 'dock at maximum capacity'
    end
    it 'fails when maximum capacity is reached' do
      station = DockingStation.new(7)
      7.times {station.dock(Bike.new)}
      expect{station.dock(Bike.new)}.to raise_error 'dock at maximum capacity'
    end

#we are trying to

  end

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

    it 'returns all of the docked bikes' do
      bike = Bike.new
      subject.dock(bike)
      expect(subject.bikes).to be_kind_of(Array)
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
      subject.dock(bike)
      # check that the bike is in array of docked bikes
      expect(subject.bikes).to include(bike)
    end

    it "raises an error when dock capacity is full" do
      docking_station = subject.dock(Bike.new)
      expect{ docking_station.dock(Bike.new)}.to raise_error
    end

    it 'raises an error when its full' do
      subject.capacity.times { subject.dock(Bike.new) }
      expect{subject.dock(Bike.new)}.to raise_error 'dock at maximum capacity'
    end
  end

end

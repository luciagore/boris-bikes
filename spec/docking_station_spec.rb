require_relative '../lib/docking_station'

describe DockingStation do

  let(:bike) { double :bike }

  describe '#initialize' do
    it 'has a default capacity' do
      expect(subject.capacity).to eq DockingStation::DEFAULT_CAPACITY
    end
    it 'has a variable capacity' do
      expect(DockingStation.new(50).capacity).to eq 50
    end
    it 'fails when maximum capacity is reached' do
      station = DockingStation.new(5)
      expect{6.times { station.dock(bike) }}.to raise_error 'dock at maximum capacity'
    end
    it 'fails when maximum capacity is reached' do
      station = DockingStation.new(7)
      7.times {station.dock(bike)}
      expect{station.dock(bike)}.to raise_error 'dock at maximum capacity'
    end

  end

  describe '#release_bike' do
    it 'responds to release_bike' do
      expect(DockingStation.new).to respond_to(:release_bike)
    end

    it { is_expected.to respond_to :release_bike}

    it 'release a bike' do
      bike = bike
      subject.dock(bike)
      current_number_of_bikes = subject.bikes.length
      subject.release_bike
      expect (subject.bikes.length).to eq (current_number_of_bikes - 1)
    end

    it 'we expect it to release the docked bike' do
      bike = bike
      subject.dock(bike)
      expect(subject.release_bike).to eq bike
    end

    it 'raises an error when there are no bikes' do
      expect {subject.release_bike}.to raise_error 'No bikes available'
    end

    it 'doesnt release a broken bike' do
      bike1 = bike
      bike2 = bike
      bike2.report_broken
      subject.dock(bike1)
      subject.dock(bike2)
      subject.release_bike
      p subject.bikes
      expect {subject.release_bike}.to raise_error 'No bikes available'
    end
  end

  describe '#bike' do

    it 'responds to bike' do
      expect(DockingStation.new).to respond_to(bikes)
    end

    it 'returns all of the docked bikes' do
      bike = bike
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
      bike = bike
      subject.dock(bike)
      # check that the bike is in array of docked bikes
      expect(subject.bikes).to include(bike)
    end

    it "raises an error when dock capacity is full" do
      subject.capacity.times { subject.dock(bike) }
      expect{ subject.dock(bike)}.to raise_error 'dock at maximum capacity'
    end

    it 'raises an error when its full' do
      subject.capacity.times { subject.dock(bike) }
      expect{subject.dock(bike)}.to raise_error 'dock at maximum capacity'
    end
  end


end

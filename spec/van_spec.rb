require 'van'

describe Van do
  let(:bike) { double :bike }
  let(:bike1) { double :bike }
  let(:garage) { double :garage }
  let (:dockingstation) { double :dockingstation }

  describe '#collect_bikes' do
    it 'collects broken bikes from docking station' do
    allow(bike).to receive_messages(:working? => true)
    allow(bike1).to receive_messages(:working? => false)
    allow(dockingstation).to receive_messages(:bikes => [bike1, bike1, bike1])
    subject.collect_bikes(dockingstation)
    expect(subject.bikes_invan.length).to eq 3
  end
  end

  describe '#bikes_to_garage' do
    it 'moves bikes from van to garage' do
      allow(bike1).to receive_messages(:working? => false)
      allow(garage).to receive_messages(:take_bikes => 3)
      allow(dockingstation).to receive_messages(:bikes => [bike1, bike1, bike1])
      subject.collect_bikes(dockingstation)
      expect(subject.bikes_togarage(garage).length).to eq 3
      expect(subject.bikes_invan.length).to eq 0
    end


  end


end

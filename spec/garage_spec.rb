require 'garage'
require 'bike'

describe Garage do

  let(:van) { double :van}
  let(:bike) { double :bike }
  let(:bike1) { double :bike }

  describe '#take_bikes' do
    it 'takes the bikes from the van to the garage' do
    allow(bike1).to receive_messages(:working? => false)
    allow(van).to receive_messages(:bikes_togarage => true)
    allow(van).to receive_messages(:bikes_invan => [bike1, bike1])
    subject.take_bikes(van.bikes_invan)
    expect(subject.bikes_ingarage.length).to eq 2
    end
  end

  describe '#fix' do
    it 'fixes the bikes in the garage' do
      allow(bike1).to receive_messages(:working? => false)
      allow(bike1).to receive(:working_status)
      allow(van).to receive_messages(:bikes_togarage => true)
      allow(van).to receive_messages(:bikes_invan => [Bike.new, Bike.new])
      subject.take_bikes(van.bikes_invan)
      subject.fix
      allow(bike).to receive_messages(:working? => true)
      expect(subject.bikes_ingarage).to eq(van.bikes_invan)
    end
  end

end

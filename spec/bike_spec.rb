require_relative '../lib/bike'

describe Bike do

  describe '#report_broken' do
    it 'responds to report_broken' do
      expect(Bike.new).to respond_to(:report_broken)
    end

    it 'change working to false' do
      subject.report_broken
      expect(subject.working?).to be false
    end
  end

  describe '#working' do
    it 'responds to working?' do
      expect(Bike.new).to respond_to(:working?)
    end

    # it 'takes one argument' do
    #   expect(Bike.new).to respond_to(:working?).with(1).argument
    # end

  #   it 'allows user to report bike as broken' do
  #     bike = Bike.new
  #     subject.working?("broken")
  #     expect(subject.working?("broken")).to be false
  #   end

  end

end

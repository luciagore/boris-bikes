require_relative 'bike'
require_relative 'van'

class Garage
attr_reader :bikes_ingarage

  def initialize
    @bikes_ingarage = []
  end

  def take_bikes(bikes_invan)
    # p @bikes_ingarage
    bikes_invan.each do |bike|
      @bikes_ingarage << bike

    end
    return @bikes_ingarage
  end

  def fix
    @bikes_ingarage.each do |bike|
      bike.working_status = true
    end
  end
end

# g = Garage.new
# v = Van.new
# bikes = Array.new(10, Bike.new)
#
# p g.take_bikes(bikes)

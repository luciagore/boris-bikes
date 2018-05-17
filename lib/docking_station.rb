require_relative "bike"

class DockingStation

  attr_reader :bikes

  def initialize 
    @bikes = []
  end

  def dock(bike)
    fail 'dock at maximum capacity' unless @bikes.length < 20
    @bikes << bike
  end

  def release_bike
    fail 'No bikes available' unless @bikes != [] 
    @bikes
  end
end






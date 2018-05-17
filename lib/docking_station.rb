require_relative "bike"

class DockingStation

  attr_reader :bikes

  # def bikes 
  #   @bikes[0] 
  # end

  def initialize 
    @bikes = []

  end

  def dock(bike)
    fail 'dock at maximum capacity' if @bikes.length >= 20
    @bikes << bike
    # @bikes[0]
  end

  def release_bike
    fail 'No bikes available' if @bikes.empty?
    @bikes.pop
  end
end






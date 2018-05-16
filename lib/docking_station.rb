require_relative "bike"

class DockingStation

  attr_reader :bike

  def dock(bike)
    fail 'dock at maximum capacity' unless @bike == nil
    @bike = bike
  end

  def release_bike
    fail 'No bikes available' unless @bike 
    @bike
  end

end






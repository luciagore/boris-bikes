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
    fail 'dock at maximum capacity' if full?
    @bikes << bike
    # @bikes[0]
  end

  def release_bike
    fail 'No bikes available' if empty?
    @bikes.pop
  end

  private

  def full?
    @bikes.count >= 20
  end

  def empty?
    @bikes.empty?
  end
end

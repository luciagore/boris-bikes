require_relative "bike"

class DockingStation

  DEFAULT_CAPACITY = 20

  attr_reader :bikes, :capacity

  def initialize(capacity = DEFAULT_CAPACITY)
    @bikes = []
    @capacity = capacity
  end

  def dock(bike)
    fail 'dock at maximum capacity' if full?
    @bikes << bike
    "Your bike has been docked"
  end

  def release_bike
    fail 'No bikes available' if empty?
    next_bike = next_working_bike
    if next_bike.is_a? Bike
      return next_bike
    elsif next_bike == false
      fail 'No bikes available'
    end


    # fail 'No bikes available' unless next_bike == true && next_bike.is_a? Bike
    # return next_bike
  end

  def next_working_bike
    @bikes.each_with_index do |bike,index|
      if bike.working? 
        @bikes.delete_at(index)
        return bike 
      end
      # return bike && @bikes.delete_at(index) if bike.working?
    end
    return false
  end

  private

  def full?
    @bikes.count >= @capacity
  end

  def empty?
    @bikes.empty?
  end
end

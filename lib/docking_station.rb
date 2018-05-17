require_relative "bike"

class DockingStation

  DEFAULT_CAPACITY = 20

  attr_reader :bikes, :capacity

  # def bikes
  #   @bikes[0]
  # end

  def initialize(capacity = DEFAULT_CAPACITY)
    @bikes = []
    @capacity = capacity
  end

  def dock(bike)
    fail 'dock at maximum capacity' if full?
    @bikes << bike
    # @bikes[0]
  end

  def release_bike
    fail 'No bikes available' if empty?
    @bikes.each_with_index do |bike, index|
      if bike.working? == true 
        @bikes.delete_at(index)
        return bike
      end
    end

  end

  # I want release bike to return an element of its array (an instance of Bike class, e.g. bike) 
  # that is working (bike.working? == true)

  # step 1, look at the first element. 
  # if the element.working? == true
    # return
  # else move to the next element and repeat 
  # stop when I've reached the last element (at index of array.length -1) 


  private

  def full?
    @bikes.count >= @capacity
  end

  def empty?
    @bikes.empty?
  end
end

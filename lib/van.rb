class Van

attr_accessor :bikes_invan

  def initialize
    @bikes_invan = []
  end

  def collect_bikes(dockingstation)
    todelete = []
    dockingstation.bikes.each_with_index do |bike, index|
      unless bike.working?
        @bikes_invan << bike
        todelete << index
      end
    end
    todelete = todelete.sort.reverse
    todelete.each do |index|
      dockingstation.bikes.delete_at(index)
    end
  end

  def bikes_togarage(garage)
    bikes_ingarage = []
    garage.take_bikes(@bikes_invan)
    bikes_ingarage = @bikes_invan
    @bikes_invan = []
    return bikes_ingarage
  end

  def bikes_tovan(garage)
    @bikes_invan = garage.bikes_ingarage
  end

end

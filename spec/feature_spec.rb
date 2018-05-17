# require './lib/docking_station'


def release_bike_after_dock
  station = DockingStation.new
  station.dock(Bike.new)
  station.release_bike
end

def release_bike_before_dock
  station = DockingStation.new
  station.release_bike
end

p [] == true 
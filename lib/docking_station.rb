require './lib/bike'

class DockingStation
  def release_bike
    Bike.new
  end
  def dock(bike)
     @bike = bike
  end

  def contains_bike
      @bike 
  end
end

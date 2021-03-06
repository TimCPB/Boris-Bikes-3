require './lib/bike'

class DockingStation

  attr_reader :bike

  def release_bike
    if @bike.nil?
    raise "Error, there are no bikes"
    else
    Bike.new
    end
  end

  def dock(bike)
    if !@bike.nil?
      raise "Error, station is full"
    end
     @bike = bike
  end

end

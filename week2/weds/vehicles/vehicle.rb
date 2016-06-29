class Vehicle
  def initialize(speed)
    @speed = speed
  end

  def travel_time(distance)
    distance / @speed
  end
end

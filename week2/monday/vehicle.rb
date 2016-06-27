require 'pry'  # => true

class Vehicle
  def initialize(wheels)
    @wheels = wheels      # => 0
  end                     # => :initialize

  def can_fly?
    false
  end           # => :can_fly?

  def change_tires
    @wheels.times do
      puts "Changed a wheel"
    end
  end                         # => :change_tires

  def start
    start_engine
    puts "Ding Ding!"
  end                  # => :start

  private

  def start_engine
    put_gas_in_cylinders
    puts "Vroom Rumble Rumble"
  end                           # => Vehicle

  def put_gas_in_cylinders
    puts "misssst"
  end
end                             # => Vehicle

class Car < Vehicle  # => Vehicle
  def initialize
    @wheels = 4
  end                # => :initialize
end                  # => :initialize


class Airplane < Vehicle  # => Vehicle
  def can_fly?
    true
  end                     # => :can_fly?
end                       # => :can_fly?

class Boat < Vehicle                                         # => Vehicle
  def change_tires
    raise BoatTireError, "boats dont have tires...  buddy."
  end                                                        # => :change_tires
end                                                          # => :change_tires


class BoatTireError < StandardError; end  # => nil

# russells_car = Car.new
# russells_tractor = Vehicle.new(8)
# russells_airplane = Airplane.new(18)
# russells_airplane.can_fly?
russells_boat = Boat.new(0)  # => #<Boat:0x007fff4b8b2e58 @wheels=0>
russells_boat.start_engine   # ~> NoMethodError: private method `start_engine' called for #<Boat:0x007fff4b8b2e58 @wheels=0>
# russells_fleet = [russells_boat, russells_car, russells_airplane, russells_tractor]
# russells_fleet.each do |vehicle|
#   begin
#     vehicle.change_tires
#   rescue => exception
#     binding.pry
#     puts exception.backtrace
#   end
# end

# ~> NoMethodError
# ~> private method `start_engine' called for #<Boat:0x007fff4b8b2e58 @wheels=0>
# ~>
# ~> /Users/rposborne/Desktop/class/week2/monday/vehicle.rb:55:in `<main>'

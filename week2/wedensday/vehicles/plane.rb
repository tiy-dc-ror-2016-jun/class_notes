require './vehicle'
require './cargoable'
require './flyable'

class Plane < Vehicle
  include Cargoable
  include Flyable
end

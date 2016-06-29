require './vehicle'
require './cargoable'

class Truck < Vehicle
  include Cargoable
end

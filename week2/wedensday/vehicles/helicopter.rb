require './vehicle'
require './flyable'

class Helicopter < Vehicle
  include Flyable
end

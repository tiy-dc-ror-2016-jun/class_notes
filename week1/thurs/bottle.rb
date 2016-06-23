class Bottle

  def initialize(brand, volume)
    @volume = volume             # => 320, 60
    @brand = brand               # => "REI", "Camelback"
    @open = false                # => false, false
  end                            # => :initialize

  def is_open?
    return @open  # => false, true, false
  end             # => :is_open?

  def volume
    return @volume
  end               # => :volume

  def volume=(new_volume)
    @volume = new_volume   # => 450
  end                      # => :volume=

  def sip
    if is_open?
      @volume -= 10
    end
  end

  def gulp
    @volume -= 50
  end

  def brand
    return @brand  # => "REI"
  end              # => :brand

  def open!
    if @open != true  # => true, true
      @open = true    # => true, true
      return true     # => true, true
    else
      return false
    end
  end                 # => :open!

  def close!
    if @open == true  # => true
      @open = false   # => false
      return true     # => true
    else
      return false
    end
  end                 # => :close!
end                   # => :close!

russells_bottle = Bottle.new("REI", 320)      # => #<Bottle:0x007fd032026ca0 @volume=320, @brand="REI", @open=false>
austens_bottle = Bottle.new("Camelback", 60)  # => #<Bottle:0x007fd032026250 @volume=60, @brand="Camelback", @open=false>
russells_bottle.class                         # => Bottle
russells_bottle.is_open?                      # => false
russells_bottle.brand                         # => "REI"
russells_bottle.open!                         # => true
russells_bottle.is_open?                      # => true
russells_bottle.close!                        # => true
russells_bottle.is_open?                      # => false

austens_bottle.open!  # => true

russells_bottle.volume = 450  # => 450

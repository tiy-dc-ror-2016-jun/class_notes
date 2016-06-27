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
    @volume -= 50 unless is_open?
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

require_relative "./bottle"  # => true

russells_bottle = Bottle.new("REI", 320)      # => #<Bottle:0x007f9fca104160 @volume=320, @brand="REI", @open=false>
austens_bottle = Bottle.new("Camelback", 60)  # => #<Bottle:0x007f9fca86bd90 @volume=60, @brand="Camelback", @open=false>
russells_bottle.class                         # => Bottle
russells_bottle.is_open?                      # => false
russells_bottle.brand                         # => "REI"
russells_bottle.open!                         # => true
russells_bottle.is_open?                      # => true
russells_bottle.close!                        # => true
russells_bottle.is_open?                      # => false

austens_bottle.open!  # => true

russells_bottle.volume = 450  # => 450

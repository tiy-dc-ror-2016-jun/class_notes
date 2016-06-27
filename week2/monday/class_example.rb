class Sheep
  def initialize(breed)
    @breed = breed       # => "Poodle"
  end                    # => :initialize

  def breed
    return @breed  # => "Poodle", "Poodle"
  end              # => :breed
end                # => :breed


moose = Sheep.new("Poodle")  # => #<Sheep:0x007fca69811740 @breed="Poodle">

moose.breed        # => "Poodle"
moose.breed.chars  # => ["P", "o", "o", "d", "l", "e"]

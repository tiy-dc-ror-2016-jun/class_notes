class Animal
  def initialize(legs)
    @legs = legs        # => 4, 0
  end                   # => :initialize
end                     # => :initialize

class Dog < Animal  # => Animal

end  # => nil

class Whale < Animal        # => Animal
  def initialize(legs = nil)
    super(0)             # => 0

  end  # => :initialize
end    # => :initialize

Dog.new(4)    # => #<Dog:0x007f9d538628b8 @legs=4>
Whale.new(0)  # => #<Whale:0x007f9d53862098 @legs=0>

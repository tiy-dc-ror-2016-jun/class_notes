class Dog
  # Setter
  #
  def name=(other)
    @name = other   # => "Moose"
  end               # => :name=

  # Getter
  def name
    @name   # => "Moose"
  end       # => :name
end         # => :name

moose = Dog.new       # => #<Dog:0x007f8651857238>
moose.name "Moose"  # => "Moose"
moose.name            # => "Moose"

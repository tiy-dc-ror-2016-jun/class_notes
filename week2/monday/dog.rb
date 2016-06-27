class Animal
  def initialize(name)
    @name = name        # => "Notadog", "Moose"
  end                   # => :initialize
end                     # => :initialize

class Dog < Animal  # => Animal
  def bark
    "Woof"          # => "Woof"
  end               # => :bark
end                 # => :bark

class Poodle < Dog  # => Dog

end  # => nil

class MiniPoodle < Poodle  # => Poodle
  def bark
    "Yip"                  # => "Yip"
  end                      # => :bark
end                        # => :bark

mini_poodle = MiniPoodle.new("Notadog")  # => #<MiniPoodle:0x007fbc92828c18 @name="Notadog">
poodle = Poodle.new("Moose")             # => #<Poodle:0x007fbc92828650 @name="Moose">
mini_poodle.bark                         # => "Yip"
poodle.bark                              # => "Woof"

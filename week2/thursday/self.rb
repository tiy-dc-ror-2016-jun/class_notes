class Human
  attr_reader :transcendence
  def initialize
     @transcendence = []
  end

  def get_self
    @transcendence << "Reaching"
    self
  end
end


a = Human.new.get_self.get_self.get_self

a.transcendence

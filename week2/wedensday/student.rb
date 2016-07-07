class Student
  def initialize
    @shoes = []
  end

  def buy_pair_of_shoes
    @shoes << Shoes.new
  end

  def shoes
    @shoes
  end
end

class Shoes

end

p martin = Student.new

p martin.buy_pair_of_shoes

p martin.shoes

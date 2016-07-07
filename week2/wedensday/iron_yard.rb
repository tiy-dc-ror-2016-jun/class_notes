class Student
  def win
    "I AM LAZY"
  end
end

module IronYard
  START_YEAR = 2013

  class Student
    def win
      "Winning since #{START_YEAR}"
    end
  end
  p Student.new.win
  p ::Student.new.win
end



p IronYard::Student.new.win
p Student.new.win
p IronYard::START_YEAR

students = ["Martin", "chris", "Austen", "lisa", "ava", "Erik", "Alex", "Tony"]

long_student_name = false
students.each do |student|
  if student.length >= 5
    long_student_name = true
  end
end


p long_student_name

def has_long_name?(students)
  long_student_name = false
  students.each do |student|
    if student.length >= 5
      long_student_name = true
    end
  end
  return long_student_name
end

has_long_name?(students)


students.any? { |name| name.length >= 5  }

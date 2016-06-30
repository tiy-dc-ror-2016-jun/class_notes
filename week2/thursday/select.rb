students = ["Martin", "chris", "Austen", "lisa", "ava", "Erik", "Alex", "Tony"]

short_names = []

students.each do |student|
  if student.length <= 4
    short_names << student
  end
end


short_names


def select_names_with_4_or_less_chars(students)
  short_names = []
  students.each do |student|
    if student.length <= 4
      short_names << student
    end
  end
  short_names
end

select_names_with_4_or_less_chars(students)

students.select { |name|  name.length >= 5 }

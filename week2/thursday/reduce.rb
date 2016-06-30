students = ["Martin", "chris", "Austen", "lisa", "ava", "Erik", "Alex", "Tony"]

sum = 0
students.each do |name|
  sum = sum + name.length
end
sum


def add_lengths(array)
  acc = 0
  array.each do |el|
    acc = acc + el.length
  end
  acc
end

add_lengths(students)



students.reduce(0) { |sum, name| sum + name.length }

# Complex example counts / groups student names by 
student_name_count = students.reduce({}) do |h, name|
   h[name.length] = h[name.length].to_i + 1
   h
end

student_name_count

students = ["Martin", "chris", "Austen", "lisa", "ava", "Erik", "Alex", "Tony"]  # => ["Martin", "chris", "Austen", "lisa", "ava", "Erik", "Alex", "Tony"]

students_capped = []                          # => []
students.each_with_index do |student, index|  # => ["Martin", "chris", "Austen", "lisa", "ava", "Erik", "Alex", "Tony"]
  students_capped << student.upcase           # => ["MARTIN"], ["MARTIN", "CHRIS"], ["MARTIN", "CHRIS", "AUSTEN"], ["MARTIN", "CHRIS", "AUSTEN", "LISA"], ["MARTIN", "CHRIS", "AUSTEN", "LISA", "AVA"], ["MARTIN", "CHRIS", "AUSTEN", "LISA", "AVA", "ERIK"], ["MARTIN", "CHRIS", "AUSTEN", "LISA", "AVA", "ERIK", "ALEX"], ["MARTIN", "CHRIS", "AUSTEN", "LISA", "AVA", "ERIK", "ALEX", "TONY"]
end                                           # => ["Martin", "chris", "Austen", "lisa", "ava", "Erik", "Alex", "Tony"]

students_capped  # => ["MARTIN", "CHRIS", "AUSTEN", "LISA", "AVA", "ERIK", "ALEX", "TONY"]

def upcase_words(students)
  output_students = []                 # => []
  students.each do |element|           # => ["Martin", "chris", "Austen", "lisa", "ava", "Erik", "Alex", "Tony"]
    output_students << element.upcase  # => ["MARTIN"], ["MARTIN", "CHRIS"], ["MARTIN", "CHRIS", "AUSTEN"], ["MARTIN", "CHRIS", "AUSTEN", "LISA"], ["MARTIN", "CHRIS", "AUSTEN", "LISA", "AVA"], ["MARTIN", "CHRIS", "AUSTEN", "LISA", "AVA", "ERIK"], ["MARTIN", "CHRIS", "AUSTEN", "LISA", "AVA", "ERIK", "ALEX"], ["MARTIN", "CHRIS", "AUSTEN", "LISA", "AVA", "ERIK", "ALEX", "TONY"]
  end                                  # => ["Martin", "chris", "Austen", "lisa", "ava", "Erik", "Alex", "Tony"]
  return output_students               # => ["MARTIN", "CHRIS", "AUSTEN", "LISA", "AVA", "ERIK", "ALEX", "TONY"]
end                                    # => :upcase_words


upcase_words(students)  # => ["MARTIN", "CHRIS", "AUSTEN", "LISA", "AVA", "ERIK", "ALEX", "TONY"]

new_students = students.map do |student|  # => ["Martin", "chris", "Austen", "lisa", "ava", "Erik", "Alex", "Tony"]
  student.length                          # => 6, 5, 6, 4, 3, 4, 4, 4
end                                       # => [6, 5, 6, 4, 3, 4, 4, 4]

##########################################################################
# Code Blocks
#
#
#

def our_map(array)
  result = []       # => []

  array.each do |element|     # => ["Martin", "chris", "Austen", "lisa", "ava", "Erik", "Alex", "Tony"]
    result << yield(element)  # => ["a"], ["a", "a"], ["a", "a", "a"], ["a", "a", "a", "a"], ["a", "a", "a", "a", "a"], ["a", "a", "a", "a", "a", "a"], ["a", "a", "a", "a", "a", "a", "a"], ["a", "a", "a", "a", "a", "a", "a", "a"]
  end                         # => ["Martin", "chris", "Austen", "lisa", "ava", "Erik", "Alex", "Tony"]

  result  # => ["a", "a", "a", "a", "a", "a", "a", "a"]
end       # => :our_map

our_map(students) do
  "a"                 # => "a", "a", "a", "a", "a", "a", "a", "a"
end                   # => ["a", "a", "a", "a", "a", "a", "a", "a"]

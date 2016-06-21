# this will not run
# TODO: add the rest of the students.
# students << ["Erik", "Alex", "Tony"]  # => ["martin", "chris", "Austen", "Lisa", "Ava", ["Erik", "Alex", "Tony"]]

# students.each do |element|  # => ["martin", "chris", "Austen", "Lisa", "Ava", ["Erik", "Alex", "Tony"]]
#  element                    # => "martin", "chris", "Austen", "Lisa", "Ava", ["Erik", "Alex", "Tony"]
# end                         # => ["martin", "chris", "Austen", "Lisa", "Ava", ["Erik", "Alex", "Tony"]]

students = [ "martin", "chris", "Austen", "Lisa"]  # => ["martin", "chris", "Austen", "Lisa"]

students.each do |element|  # => ["martin", "chris", "Austen", "Lisa"]
   element                  # => "martin", "chris", "Austen", "Lisa"
end                         # => ["martin", "chris", "Austen", "Lisa"]

students[0]   # => "martin"
students[4]   # => nil
students[-2]  # => "Austen"
students[-6]  # => nil

students << "Ava"  # => ["martin", "chris", "Austen", "Lisa", "Ava"]
students           # => ["martin", "chris", "Austen", "Lisa", "Ava"]
students.length    # => 5

students[4]  # => "Ava"

students + ["Erik", "Alex", "Tony"]  # => ["martin", "chris", "Austen", "Lisa", "Ava", "Erik", "Alex", "Tony"]

students  # => ["martin", "chris", "Austen", "Lisa", "Ava"]

other_class = students  # => ["martin", "chris", "Austen", "Lisa", "Ava"]

other_class               # => ["martin", "chris", "Austen", "Lisa", "Ava"]
other_class << "Russell"  # => ["martin", "chris", "Austen", "Lisa", "Ava", "Russell"]

students  # => ["martin", "chris", "Austen", "Lisa", "Ava", "Russell"]

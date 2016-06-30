class Human
  def get_self
    puts "getting self"
    self
  end
end
a = Human.new
ls a
a.get_self
show-source a.get_self
class Human 
  def eat
    puts "eating"
  end
  def get_self
    eat
    self
  end
end
exit
ls ""
def my_method 
  puts "This my method and it is mine!"
end
methods
m = method(:my_method)
m
ls m
m.call
m.name
m.owner
m.receiver
m.super_method
m = method(:my_method)
m.call
sstudents = ["Martin", "chris", "Austen", "lisa", "ava", "Erik", "Alex", "Tony"] 
students = sstudents
students
students.each do |element|
  puts element 
end
p = Proc.new do
  puts "I am in a proc"
end
p.call
ls p 
exit 

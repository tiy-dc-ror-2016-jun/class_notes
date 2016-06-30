require 'benchmark'

students = ["Martin", "chris", "Austen", "lisa", "ava", "Erik", "Alex", "Tony"]

puts "Join"
Benchmark.measure do
  10000.times do
    students.join.length
  end
end

puts "Reduce"
 Benchmark.measure do
  10000.times do
    students.reduce(0) { |sum, name| sum + name.length }
  end
end

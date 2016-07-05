# Goal Program to spit out random student name, and record when it occured.
#
# student class, that has array of picks (when called on timestamp)
#
require 'pry'
require 'time'

class Student
  attr_reader :name

  def initialize(name, initial_picks_as_text = [])
    @name = name
    @called_upon_times = []
    parse_text(initial_picks_as_text)
  end

  def record_pick!
    @called_upon_times << Time.now
    self
  end

  def parse_text(texts)
    texts.each do |text|
      # 2016-07-05 14:58:13 -0400
      timestamp_as_string = text.split(",").last
      @called_upon_times << Time.parse(timestamp_as_string)
    end
  end

  def to_text
    save_text = "" # one value this should be a reduce:)
    @called_upon_times.each do |pick_time|
      save_text += "#{@name},#{ pick_time }\n"
    end
    save_text
  end
end

class Group
  def initialize(students)
    @students = students
  end

  def randomly_pick_student!
    random_student = @students.sample

    random_student.record_pick!
  end

  def save
    full_text = "" # one value this should be a reduce:)
    @students.each do |student|
      full_text += student.to_text
    end
    full_text

    File.write("./class_participation.txt", full_text)
  end

  def load
    string_contents = File.read("./class_participation.txt")
    lines_from_text_file = string_contents.split("\n")
    # Martin, 2016-07-05 14:58:13 -0400
    # ["Martin", "2016-07-05 14:58:13 -0400"]
    # "Martin"
    grouped_picks = lines_from_text_file.group_by {|s| s.split(",").first }

    grouped_picks.each do |name, picks_as_text|
      @students.delete_if {|student| student.name == name }

      @students << Student.new(name, picks_as_text)
    end

  end
end

students = [
  "Martin",
  "Chris",
  "Austen",
  "Lisa",
  "Ava",
  "Erik",
  "Alex",
  "Tony"
].map { |name|  Student.new(name)}

dc_june = Group.new(students)

dc_june.load

# "Martin", 2016-07-05 3:34
# "Chris", 2016-07-05 3:32
# "Martin", 2016-07-05 3:31
#

binding.pry

at_exit do
  dc_june.save
  puts "Bye Y'all"
end

# dc_june.randomly_pick_student!

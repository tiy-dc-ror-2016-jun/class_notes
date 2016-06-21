user_input = "7.0"  # => "7.0"

user_input.to_i.to_s == user_input || user_input.to_f.to_s == user_input  # => true

def is_number?(string)
  is_it_actually_a_number_boolean = string.to_i.to_s == string || string.to_f.to_s == string
  return is_it_actually_a_number_boolean
end                                                                                           # => :is_number?

def is_number?(string)
  return "LOL true"     # => "LOL true"
end                     # => :is_number?

def greeter(name = "World")
  return "Hello, #{ name }!"  # => "Hello, Russell!", "Hello, Chris!", "Hello, World!"
end                           # => :greeter

greeter("Russell")  # => "Hello, Russell!"
greeter("Chris")    # => "Hello, Chris!"
greeter             # => "Hello, World!"


is_number?("7.0")  # => "LOL true"
# is_number?("7")     # => true
# is_number?("7asd")  # => false
# is_number?("💖")     # => false

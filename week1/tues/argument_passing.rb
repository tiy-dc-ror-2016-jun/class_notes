def is_number?(string)
  string
  is_integer = string.to_i.to_s == string
  is_float = string.to_f.to_s == string
  return is_integer || is_float
end

def game(guess)
  puts "yes it's a number"
end

user_input = nil

loop do
  if is_number?(user_input)
    game(guess)
  else
    puts "Please enter a number?"
  end

  user_input = gets.chomp
end

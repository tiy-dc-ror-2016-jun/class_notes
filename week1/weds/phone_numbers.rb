require "set"

phonebook = {}

loop do
  puts "What's your name?"
  name_input = gets.chomp

  break if name_input == ""

  puts "Whats your Home Phone Number?"
  home_phone_number = gets.chomp


  puts "Whats your Cell Phone Number?"
  cell_phone_number = gets.chomp


  puts "Whats your Work Phone Number?"
  work_phone_number = gets.chomp

  phone_numbers = Set.new
  phone_numbers << home_phone_number
  phone_numbers << cell_phone_number
  phone_numbers << work_phone_number

  phonebook[name_input] = phone_numbers
end

p phonebook

loop do
  puts "Whoese phone number do you want?"
  name_input = gets.chomp
  break if name_input == ""

  phone_number = phonebook[name_input]

  if phone_number
    puts "#{name_input}'s phone number are #{phone_number.join(", ")}"
  else
    puts "Who is #{name_input}?"
  end
end

word = gets.chomp

if word == word.reverse
  puts word + " is indeed a palindrome"
else
  puts "Nope"
end

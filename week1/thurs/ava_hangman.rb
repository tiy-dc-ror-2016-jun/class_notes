# print "Lets play Hangman! Type ok to start."
# user_input_ok = gets.chomp.downcase
#
#
# until user_input_ok == "ok"
#  print '...'
# end
#
#
# turn = 0
# rematch = nil
# word_bank = ["duck","book","cat","taco"]
# if rematch == 'new' || turn == 0
#  word_bank.each do |x|
#    print  " _ "
#  end

def display_word(word, guesses)
  mask_word = ""
  word.chars.each do |char|
    if guesses.include?(char)
      mask_word += char
    else
      mask_word += "_"
    end
  end
  return mask_word
end



p display_word("moose", ["o", "m"])  # => "moo__"
p display_word("moose", ["o", "s"])  # => "_oos_"
p display_word("moose", ["x", "e"])  # => "____e"
p display_word("moose", [])          # => "_____"

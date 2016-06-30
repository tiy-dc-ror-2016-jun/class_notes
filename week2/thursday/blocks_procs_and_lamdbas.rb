[1,2,3].each do                 # => [1, 2, 3]
  "I am inside a block !!!!!!"  # => "I am inside a block !!!!!!", "I am inside a block !!!!!!", "I am inside a block !!!!!!"
end                             # => [1, 2, 3]

def moose(&code)
  puts "I am before the block"  # => nil
  code.call if code             # => nil
  puts "I am after the block"   # => nil
end                             # => :moose

# moose do
#   puts "I am moose hear me roar!!!!"  # => nil
# end                                    # => nil

# >> I am before the block
# >> I am moose hear me roar!!!!
# >> I am after the block
p = Proc.new do
  puts "I am in a proc"
end


moose(p)

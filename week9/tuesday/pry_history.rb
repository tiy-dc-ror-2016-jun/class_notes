Proc.new
Proc.new { puts "hello" }
a = _
a
a.call
{a => "I am the value"}
b = _
b[a]
b[a] = a
a
b
b.keys
b.keys.each {|key| key.call}
ObjectSpace
ls ObjectSpace
ObjectSpace.count_objects
exit

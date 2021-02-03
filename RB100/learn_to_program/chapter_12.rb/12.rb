alpha = Array.new + [12345]   #  Array addition
beta  = String.new + 'hello'  #  String addition
karma = Time.new              #  Current date and time

puts "alpha = #{alpha}"
puts "beta  = #{beta}"
puts "karma = #{karma}"

time  = Time.new   #  The moment we ran this code.
time2 = time + 60  #  One minute later.

puts time
puts time2

puts Time.local(2000, 1, 1)          #  Y2K.
puts Time.local(1976, 8, 3, 13, 31)  #  When I was born.

puts Time.gm(1955, 11, 5)  #  A red-letter day. Greenwich mean time(GMT)

=begin
P
input:
output: integers
mental model
print out odd numbers 1 - 99 with each on it's own line
E
1
3
5
etc..
D
range
A
iterate through the range 1 - 99
if the number is odd print on its own line
=end

(1..99).each { |num| puts num if num.odd? }

#  Further Exploration
puts(1.upto(99).select { |num| num.odd? })

puts(1.upto(99).select(&:odd?))

puts (1..99).step(2).to_a

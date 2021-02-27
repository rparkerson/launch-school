=begin
P
input:
output: integers
mental model
print out even numbers 1 - 99 with each on it's own line
E
2
4
6
..
96
98
D
range
A
iterate through the range 1 - 99
if the number is odd print on its own line
=end

(1..99).each { |num| puts num if num.even? }

value = 2
while value < 99
  puts value
  value += 2
end

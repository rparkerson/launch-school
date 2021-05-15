=begin
P
input: positive integer
output: returns sum of its digits
mental model:
Seperate each digit and then add them together and return that value
for a challenge try this without basic looping constructs
E
puts sum(23) == 5
puts sum(496) == 19
puts sum(123_456_789) == 45
D
array
A
(with iterators)
Convert digits to string and seperate into a hash by character
convert each element to a integer and add together
return sum
=end

def sum(number)
  sum = 0
  number.to_s.chars.each do |char| 
    sum += char.to_i
  end
  sum
end

puts sum(23) == 5
puts sum(496) == 19
puts sum(123_456_789) == 45

def sum(number)
  number.digits.sum
end

puts sum(23) == 5
puts sum(496) == 19
puts sum(123_456_789) == 45

def sum(number)
  number.to_s.chars.map(&:to_i).reduce(:+)
end

puts sum(23) == 5
puts sum(496) == 19
puts sum(123_456_789) == 45

=begin
input: integer(positive)
output: integer(sum)
rules:
return the sum of the digits

A
- isolate each digit into an array
- return the sum the digits

=end

def sum(num)
  num.digits.sum
end

puts sum(23) == 5
puts sum(496) == 19
puts sum(123_456_789) == 45

def sum(num)
  num.to_s.chars.map(&:to_i).sum
end

puts sum(23) == 5
puts sum(496) == 19
puts sum(123_456_789) == 45

# Unnecessary conversion to a hash for practice
def sum(num)
  p num.to_s.chars.tally.keys.map(&:to_i).reduce(:+)
end

puts sum(23) == 5
puts sum(496) == 19
puts sum(123_456_789) == 45

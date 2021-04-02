=begin
Reverse the Digits In a Number
Write a method that takes a positive integer as an argument and returns
that number with its digits reversed. Examples:

reversed_number(12345) == 54321
reversed_number(12213) == 31221
reversed_number(456) == 654
reversed_number(12000) == 21 # No leading zeros in return value!
reversed_number(12003) == 30021
reversed_number(1) == 1

Don't worry about arguments with leading zeros - Ruby sees those as octal
numbers, which will cause confusing results. For similar reasons, the
return value for our fourth example doesn't have any leading zeros.

P
input: integer(positive)
output: integer (with digits reversed)
rules
explicit:
reverse the digits
integers are positive
flipped arguments leading with zeros should ignore zeros
question:
what if argument is empty? -n/a not an integer

E
reversed_number(12345) == 54321
reversed_number(12213) == 31221
reversed_number(456) == 654
reversed_number(12000) == 21 # No leading zeros in return value!
reversed_number(12003) == 30021
reversed_number(1) == 1

D
strings
arrays

A
- convert integer to a string
- reverse string
- convert to an integer

*digits

=end

def reversed_number(num)
  num.digits.join.to_i
end

p reversed_number(12345) #== 54321
p reversed_number(12213) == 31221
p reversed_number(456) == 654
p reversed_number(12000) == 21 # No leading zeros in return value!
p reversed_number(12003) == 30021
p reversed_number(1) == 1

def reversed_number(num)
  num.to_s.reverse.to_i
end

p reversed_number(12345) #== 54321
p reversed_number(12213) == 31221
p reversed_number(456) == 654
p reversed_number(12000) == 21 # No leading zeros in return value!
p reversed_number(12003) == 30021
p reversed_number(1) == 1

# Forbidden loop technique (less efficient)
def reversed_number(num)
  result = ''
  string = num.to_s
  string.each_char { |char| result.prepend(char) }
  result.to_i
end

p reversed_number(12345) #== 54321
p reversed_number(12213) == 31221
p reversed_number(456) == 654
p reversed_number(12000) == 21 # No leading zeros in return value!
p reversed_number(12003) == 30021
p reversed_number(1) == 1

# Refactored
def reversed_number(num)
  result = ''
  num.to_s.each_char { |char| result.prepend(char) }
  result.to_i
end

p reversed_number(12345) #== 54321
p reversed_number(12213) == 31221
p reversed_number(456) == 654
p reversed_number(12000) == 21 # No leading zeros in return value!
p reversed_number(12003) == 30021
p reversed_number(1) == 1

# Student Solution - using arithmetic
def reversed_number(number)
  number.digits.inject {|answer, num| answer = answer * 10 + num}
end

p reversed_number(12345)

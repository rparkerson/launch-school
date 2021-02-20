require 'pry'
=begin
P 
input: positive integer
output: string of 10101 same length as integer
always start with a 1
have the same number of digits as the integer
mental model:
check the digit length of the integer and return a string of
1 and 0's to match the integer length.
E
puts stringy(6) == '101010'
puts stringy(9) == '101010101'
puts stringy(4) == '1010'
puts stringy(7) == '1010101'
D
Strings
A
Start with a string '1' and append a 0 for each odd number and a 1 for evens
as I iterate through the range upto the number
return the string
=end

def stringy(number)
  string = '1'
  2.upto(number) do |num| 
    if num.even? 
      string << '0'
    else
      string << '1'
    end
  end
  string
end

puts stringy(6) == '101010'
puts stringy(9) == '101010101'
puts stringy(4) == '1010'
puts stringy(7) == '1010101'


def stringy(number)
  ''.rjust(number, '10')
end

puts stringy(6) == '101010'
puts stringy(9) == '101010101'
puts stringy(4) == '1010'
puts stringy(7) == '1010101'

#  Further exploration
def stringy(number, modifier = 1)
  string = ''
  number.times do |num|
    num += modifier
    filler = num.even? ? '0' : '1'
    string << filler
  end
  string
end

puts stringy(6) == '101010'
puts stringy(9) == '101010101'
puts stringy(4) == '1010'
puts stringy(7) == '1010101'

puts stringy(6, 0) == '010101'
puts stringy(9, 0) == '010101010'
puts stringy(4, 0) == '0101'
puts stringy(7, 0) == '0101010'

#  Further exploration
def stringy(number, start = 1)
  ''.rjust(number, (start == 1 ? '10' : '01'))
end

puts stringy(6) == '101010'
puts stringy(9) == '101010101'
puts stringy(4) == '1010'
puts stringy(7) == '1010101'

puts stringy(6, 0) == '010101'
puts stringy(9, 0) == '010101010'
puts stringy(4, 0) == '0101'
puts stringy(7, 0) == '0101010'

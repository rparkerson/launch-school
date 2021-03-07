=begin
The String#to_i method converts a string of numeric characters 
(including an optional plus or minus sign) to an Integer. String#to_i
and the Integer constructor (Integer()) behave similarly. In this exercise,
you will create a method that does the same thing.

Write a method that takes a String of digits, and returns the appropriate
number as an integer. You may not use any of the methods mentioned above.

For now, do not worry about leading + or - signs, nor should you worry
about invalid characters; assume all characters will be numeric.

You may not use any of the standard conversion methods available
in Ruby to convert a string to a number, such as String#to_i, Integer(),
etc. Your method should do this the old-fashioned way and calculate 
the result by analyzing the characters in the string.

P
input: string(numeric(digits) characters)
output: integer(number)
rules:
explicit:
do not use to_i or Integer() methods
Do not worry about leading + or -
assume all characters will be numeric
calculate result by analyzing the characters in the string
implicit:

questions: 
Can we use ascii values?
Examples

string_to_integer('4321') == 4321
string_to_integer('570') == 570

D
arrays

A
given a string of numerics 'string' return an integer
initialize a hash 'conversion' constant
  set each numeric as a string equal to an integers 0 through 9
separate string into an array('characters') of each individual characters
loop through 'characters' and substitute each string element 'char' with
corresponding 'conversion' value and save to variable 'digits' array
convert array of integers ('digits') into number using arithmatic
  intialize 'sum' and set to 0
  reverse digits
  initialize 'index' and set to 0
  loop through 'digits'
    sum += first element * 10 ** 'index'

return sum
=end

CONVERSIONS = {'0' => 0, '1' => 1, '2' => 2, '3' => 3, '4' => 4, 
              '5' => 5, '6' => 6, '7' => 7, '8' => 8, '9' => 9}

def string_to_integer(string)
  characters = string.chars
  digits = characters.map { |char| CONVERSIONS[char] }
  
  sum = 0
  digits.reverse.each_with_index do |num, index| 
    sum += num * 10**index
  end
  sum
end

p string_to_integer('4321') #== 4321
p string_to_integer('570') #== 570
p string_to_integer('4321') == 4321
p string_to_integer('570') == 570

#  Further Exploration (convert a hexadecimal number(string) to integer value)
def hexadecimal_to_integer(string)
  string.hex
end

p hexadecimal_to_integer('4D9f') #== 19871
p hexadecimal_to_integer('4D9f') == 19871

=begin
In the previous exercise, you developed a method that converts simple numeric
strings to Integers. In this exercise, you're going to extend that method
to work with signed numbers.

Write a method that takes a String of digits, and returns the appropriate
number as an integer. The String may have a leading + or - sign; if the
first character is a +, your method should return a positive number; if it
is a -, your method should return a negative number. If no sign is given,
you should return a positive number.

You may assume the string will always contain a valid number.

You may not use any of the standard conversion methods available in Ruby,
such as String#to_i, Integer(), etc. You may, however, use the
string_to_integer method from the previous lesson.

P
Input: string(of digits) 
Output: integer (+ or -)
Rules
Explicit:
Return a negative if leading negative(-), else positive(+ or no leading sign)
assume the string is always a valid number
no using to_i or Integer().
Can use previous string_to_integer method
Implicit:
return integer without + sign

Examples

string_to_signed_integer('4321') == 4321
string_to_signed_integer('-570') == -570
string_to_signed_integer('+100') == 100

D
arrays

A
given a string of digits 'string'

define 'sign_multiplier' method takes string as argument
  check if leading sign if present
  record if leading sign was negative
  multiply integer by -1 if leading sign is - else 1

remove the string sign if present with a + or - with 'sign_remover'
    else check if the first character in string is + or -
      if character is - remove -
      elsif start with a + remove +
  return copy of string without sign

pass string into previous string_to_integer method
  convert string to array 'chars' of strings reversed
  loop through chars
    have each element reference DIGITS key
    multiply by 10**(index) and sum total
return integer with negative sign if negative
=end

DIGITS = {'0' => 0, '1' => 1, '2' => 2, '3' => 3, '4' => 4, 
          '5' => 5, '6' => 6, '7' => 7, '8' => 8, '9' => 9}

def sign_multiplier(string)
  string[0] == '-' ? -1 : 1
end

def without_sign(string)
  sign = string[0]
  (sign == '-' || sign == '+') ? string[1..-1] : string
end

def string_to_integer(string)
  chars = string.chars.reverse
  totals_array = chars.map.with_index do |char, index|
                  DIGITS[char] * 10**(index)
                end
  totals_array.sum
end

def string_to_signed_integer(string)
  return nil if string == ''
  sign = sign_multiplier(string)
  only_digits = without_sign(string)
  sign * string_to_integer(only_digits)
end


p string_to_signed_integer('-570') == -570
p string_to_signed_integer('4321') == 4321
p string_to_signed_integer('+100') == 100
p string_to_signed_integer('') == nil

#  Futher exploration (refactor the following - no repetitive calls)
def string_to_signed_integer(string)
  case string[0]
  when '-' then -string_to_integer(string[1..-1])
  when '+' then string_to_integer(string[1..-1])
  else          string_to_integer(string)
  end
end

def string_to_integer(string)
  string.chars.reduce(0) { |sum, char| sum = 10 * sum + DIGITS[char] }
end

def string_to_signed_integer(string)
  without_sign = string_to_integer(string.delete('-+'))
  case string[0]
  when '-' then -without_sign
  else           without_sign
  end
end

p string_to_signed_integer('-570') #== -570
p string_to_signed_integer('4321') #== 4321
p string_to_signed_integer('+100') #== 100

#  Further Exploration (refactored with ternary operator)
def string_to_signed_integer(string)
  no_sign_integer = string_to_integer(string.delete('-+'))
  string[0] == '-' ? -no_sign_integer : no_sign_integer
end

p string_to_signed_integer('-570') #== -570
p string_to_signed_integer('4321') #== 4321
p string_to_signed_integer('+100') #== 100

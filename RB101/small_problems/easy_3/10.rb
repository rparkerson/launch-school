=begin
P
input: integer
output: return boolean
rules
no integer validation needed
questions:
what if the number starts and ends with 1 or more 0's?
mental model:
create a method (palindromic_number?) that takes 1 integer as an argument
if palindromic return true else false.
E 
palindromic_number?(34543) == true
palindromic_number?(123210) == false
palindromic_number?(22) == true
palindromic_number?(5) == true
D
arrays
A
define palindromic_number? method that takes 1 parameter number
if number = number backwards
return boolean true else false
=end

def palindromic_number?(number)
  number == number.digits.join.to_i
end

p palindromic_number?(34543) == true
p palindromic_number?(123210) == false
p palindromic_number?(22) == true
p palindromic_number?(5) == true
p palindromic_number?(000523325000) == true
=begin
D
strings
A
define palindromic_number? method that takes 1 parameter number
reverse number
  convert number to a string then reverse and change back to an integer
compare number to reverse number
return boolean if number == reverse number else false
=end
def palindromic_number?(number)
  number == number.to_s.reverse.to_i
end

p palindromic_number?(34543) == true
p palindromic_number?(123210) == false
p palindromic_number?(22) == true
p palindromic_number?(5) == true
p palindromic_number?(000523325000) == true

#  Using other previous palindrome? method
def palindrome?(sequence)
  sequence == sequence.reverse
end

def palindromic_number?(number)
  palindrome?(number.to_s)
end

p palindromic_number?(34543) == true
p palindromic_number?(123210) == false
p palindromic_number?(22) == true
p palindromic_number?(5) == true
p palindromic_number?(000523325000) == true

#  Further exploration (test case number starts with 0(s) and is a palindrome)
# Ruby can not store multiple zeros as a value other than 1 leading zero
# as a octal.  So the method will not work to account for leading 0's.

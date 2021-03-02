=begin
P
input: string
output: return boolean
rules:
case-insensitive
ignore all non-alphanumeric characters (only letters/numbers a-z 0-9)
problem domain - define alphanumeric characters(no symbols , ')
just one parameter? yes
mental model:
Create a method(real_palindrome?) that takes a string as an argument and
returns a boolean true if palindrome else false. It is case insensitive, and
ignore all non-alphanumeric characters.
E
real_palindrome?('madam') == true
real_palindrome?('Madam') == true           # (case does not matter)
real_palindrome?("Madam, I'm Adam") == true # (only alphanumerics matter)
real_palindrome?('356653') == true
real_palindrome?('356a653') == true
real_palindrome?('123ab321') == false
D
string
A
Define a real_palindrome? method that takes a single parameter
initialize an array containing all symbols SYMBOLS
alphanumeric variable = string with symbols deleted using 
  SYMBOLS to string and downcased
reverse alphanumeric and compare it to original alphanumeric
return the resulting boolean
=end

SYMBOLS = ["!", "@", "#", "&", "(", ")", "–", "[", "{", "}", "]", ":", ";",
 "'", ",", "?", "/", "*", '`', "~", "$", "^", "+", "=", "<", ">", '"']

def real_palindrome?(string)
  alphanumeric = string.downcase.delete(SYMBOLS.to_s)
  alphanumeric == alphanumeric.reverse 
end

p real_palindrome?('madam') == true
p real_palindrome?('Madam') == true           # (case does not matter)
p real_palindrome?("Madam, I'm Adam") == true # (only alphanumerics matter)
p real_palindrome?('356653') == true
p real_palindrome?('356a653') == true
p real_palindrome?('123ab321') == false

#  Alternative
def palindrome?(sequence)
  sequence == sequence.reverse
end

def real_palindrome?(string)
  string = string.downcase.delete('^a-z0-9')
  palindrome?(string)
end

p real_palindrome?('madam') == true
p real_palindrome?('Madam') == true           # (case does not matter)
p real_palindrome?("Madam, I'm Adam") == true # (only alphanumerics matter)
p real_palindrome?('356653') == true
p real_palindrome?('356a653') == true
p real_palindrome?('123ab321') == false

#  Regex
def real_palindrome?(str)
  str = str.downcase.gsub(/[^0-9a-z]/i, '')
  str == str.reverse
end

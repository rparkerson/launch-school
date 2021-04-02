=begin
Uppercase Check
Write a method that takes a string argument, and returns true if all
of the alphabetic characters inside the string are uppercase, false
otherwise. Characters that are not alphabetic should be ignored.

Examples:

uppercase?('t') == false
uppercase?('T') == true
uppercase?('Four Score') == false
uppercase?('FOUR SCORE') == true
uppercase?('4SCORE!') == true
uppercase?('') == true

P
input: string
output: boolean (true if all letters are uppercase)
rules
explicit:
if all alphabetic characters are uppercase return true
otherwise return false

E
uppercase?('t') == false
uppercase?('T') == true
uppercase?('Four Score') == false
uppercase?('FOUR SCORE') == true
uppercase?('4SCORE!') == true
uppercase?('') == true

D
strings

A
if upcased version of string is the same return true
else return false

=end

def uppercase?(str)
  str.upcase == str
end

p uppercase?('t') == false
p uppercase?('T') == true
p uppercase?('Four Score') == false
p uppercase?('FOUR SCORE') == true
p uppercase?('4SCORE!') == true
p uppercase?('') == true

def uppercase?(str)
  str.scan(/[a-z]/).empty?
end

p uppercase?('t') == false
p uppercase?('T') == true
p uppercase?('Four Score') == false
p uppercase?('FOUR SCORE') == true
p uppercase?('4SCORE!') == true
p uppercase?('') == true

#  Further exploration - should an empty string return false?
#  The method is checking if alphabetic characters are uppercase
#  Since there are no alphabetic characters, they are as much uppercase
#  as they are lowercase, so either false or true won't make much sense.
#  Returning true makes it more consistant with the other results so
#  I would leave it.
#  On the other hand, this method name could be confusing since
#  uppercase? returning true might imply there is some letters to 
#  begin with. A solution might be to do a string letter character check
#  first.

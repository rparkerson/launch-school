=begin
Swap Case
Write a method that takes a string as an argument and returns a new string
in which every uppercase letter is replaced by its lowercase version, and
every lowercase letter by its uppercase version. All other characters
should be unchanged.

You may not use String#swapcase; write your own version of this method.

Example:

swapcase('CamelCase') == 'cAMELcASE'
swapcase('Tonight on XYZ-TV') == 'tONIGHT ON xyz-tv'

P
input: string
output: new string
rules
explicit:
write a method
takes a string as argument
returns a new string
every uppercase letter is replaced by its lowercase
every lowercase letter replaced by uppercase version
non-letters remain unchanged
do not use String#swapcase
implicit:

E
swapcase('CamelCase') == 'cAMELcASE'
swapcase('Tonight on XYZ-TV') == 'tONIGHT ON xyz-tv'

D
strings
arrays

A
- write a method takes 1 string argument returns new string
- initialize an empty string
- iterate through each character in the string check each value
- if value is lowercase capitalize (compare with lowercase array)
- if value is uppercase capitalize (compare with uppercase array)
- if neither do nothing
- append values to a new string
- return new string

=end

LOWERCASE = [*'a'..'z']
UPPERCASE = [*'A'..'Z']

def swapcase(string)
  swapped = ''

  string.each_char do |char|
    if LOWERCASE.include?(char)
      swapped << char.upcase
    elsif UPPERCASE.include?(char)
      swapped << char.downcase
    else
      swapped << char
    end
  end

  swapped
end

p swapcase('CamelCase') == 'cAMELcASE'
p swapcase('Tonight on XYZ-TV') == 'tONIGHT ON xyz-tv'

def swapcase(string)
  swapped = ''

  string.each_char do |char|
    if char =~ /[a-z]/
      swapped << char.upcase
    elsif char =~ /[A-Z]/
      swapped << char.downcase
    else
      swapped << char
    end
  end

  swapped
end

p swapcase('CamelCase') == 'cAMELcASE'
p swapcase('Tonight on XYZ-TV') == 'tONIGHT ON xyz-tv'

def swapcase(str)
  str.chars.map { |chr| chr == chr.upcase ? chr.downcase : chr.upcase }.join
end

p swapcase('CamelCase') == 'cAMELcASE'
p swapcase('Tonight on XYZ-TV') == 'tONIGHT ON xyz-tv'

# Provided Solution
def swapcase(string)
  characters = string.chars.map do |char|
    if char =~ /[a-z]/
      char.upcase
    elsif char =~ /[A-Z]/
      char.downcase
    else
      char
    end
  end
  characters.join
end


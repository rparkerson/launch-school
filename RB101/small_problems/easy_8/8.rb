=begin
Double Char (Part 2)
Write a method that takes a string, and returns a new string in which
every consonant character is doubled. Vowels (a,e,i,o,u), digits,
punctuation, and whitespace should not be doubled.

Examples:

double_consonants('String') == "SSttrrinngg"
double_consonants("Hello-World!") == "HHellllo-WWorrlldd!"
double_consonants("July 4th") == "JJullyy 4tthh"
double_consonants('') == ""

P
input: string
output: return new string (every consonant doubled)
rules
explicit:
double every consonant
do not double:
  - vowels(a,e,i,o,u)
  - digits
  - punctuation
  - whitespace
implicit:
do not double non letters or vowels
empty strings return empty string

E
double_consonants('String') == "SSttrrinngg"
double_consonants("Hello-World!") == "HHellllo-WWorrlldd!"
double_consonants("July 4th") == "JJullyy 4tthh"
double_consonants('') == ""

D
strings

A
- iterate through every character in string
- if character is consonant(lower or capital) double it
- return combined new characters as a string

- initialize an empty string
- convert string to an array with each character from string as an element
- iterate through array
  - add charcter to new string
  - if character is a consonant add it again

=end

# alternate regex : [a-z&&[^aeiou]]/i
def double_consonants(string)
  result = ''
  string.chars.each do |char|
    result += char
    result += char if char =~ /[a-z]/i && char =~ /[^aeiou]/i
  end
  result
end

p double_consonants('String') #== "SSttrrinngg"
p double_consonants("Hello-World!") == "HHellllo-WWorrlldd!"
p double_consonants("July 4th") == "JJullyy 4tthh"
p double_consonants('') == ""

def double_consonants(string)
  string.chars.map do |char| 
    char =~ /[a-z]/i && char =~ /[^aeiou]/i ? char * 2 : char
  end.join
end

p double_consonants('String') #== "SSttrrinngg"
p double_consonants("Hello-World!") == "HHellllo-WWorrlldd!"
p double_consonants("July 4th") == "JJullyy 4tthh"
p double_consonants('') == ""

CONSONANTS = %w(b c d f g h j k l m n p q r s t v w x y z)

def double_consonants(string)
  string.chars.map do |char|
    CONSONANTS.include?(char.downcase) ? char * 2 : char
  end.join
end

p double_consonants('String') #== "SSttrrinngg"
p double_consonants("Hello-World!") == "HHellllo-WWorrlldd!"
p double_consonants("July 4th") == "JJullyy 4tthh"
p double_consonants('') == ""

CONSONANTS = %w(b c d f g h j k l m n p q r s t v w x y z)

def double_consonants(string)
  binks = '' # misa nosa do anything butsa bad humor; just liksa movies
  string.chars.map do |char|
    CONSONANTS.include?(char.downcase) ? "#{char}#{char}#{binks}" : char
  end.join
end

p double_consonants('String') #== "SSttrrinngg"
p double_consonants("Hello-World!") == "HHellllo-WWorrlldd!"
p double_consonants("July 4th") == "JJullyy 4tthh"
p double_consonants('') == ""

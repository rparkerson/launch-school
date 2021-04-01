=begin
Double Char (Part 1)

Write a method that takes a string, and returns a new string in which every
character is doubled.

Examples:

repeater('Hello') == "HHeelllloo"
repeater("Good job!") == "GGoooodd  jjoobb!!"
repeater('') == ''

P
input: string
output: returns a new string (every character is doubled)
rules
explicit:
create a method
return a string with every character doubled
implicit:
double blank spaces too
an empty string returns an empty string (double nothing is nothing)

E
repeater('Hello') == "HHeelllloo"
repeater("Good job!") == "GGoooodd  jjoobb!!"
repeater('') == ''

D
string

A

convert string to an array with each character as an element
multiply that array with itself
flatten array
join array elements

convert to an array with each character as an element
iterate through string and multiply each character by 2
combine into new string

=end

def repeater(string)
  string.chars.zip(string.chars).join
end

p repeater('Hello') #== "HHeelllloo"
p repeater("Good job!") == "GGoooodd  jjoobb!!"
p repeater('') == ''

def repeater(string)
  string.chars.map { |char| char * 2 }.join
end

p repeater('Hello') #== "HHeelllloo"
p repeater("Good job!") == "GGoooodd  jjoobb!!"
p repeater('') == ''

def repeater(string)
  string.chars.zip(string.chars).join
end

p repeater('Hello') #== "HHeelllloo"
p repeater("Good job!") == "GGoooodd  jjoobb!!"
p repeater('') == ''

# Student Solution using Regex
def repeater(string)
  string.gsub(/(.)/, '\1\1')
end

p repeater('Hello') #== "HHeelllloo"
p repeater("Good job!") == "GGoooodd  jjoobb!!"
p repeater('') == ''

def repeater(string)
  Array.new(2, string.chars).transpose.join
end

p repeater('Hello') #== "HHeelllloo"
p repeater("Good job!") == "GGoooodd  jjoobb!!"
p repeater('') == ''

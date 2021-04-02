=begin
Get The Middle Character
Write a method that takes a non-empty string argument, and returns the
middle character or characters of the argument. If the argument has an
odd length, you should return exactly one character. If the argument
has an even length, you should return exactly two characters.

Examples:

center_of('I love ruby') == 'e'
center_of('Launch School') == ' '
center_of('Launch') == 'un'
center_of('Launchschool') == 'hs'
center_of('x') == 'x'

P
input: string (non-empty)
output: string (1 or 2 characters of the middle)
rules
explicit:
return the middle character
if the string argument length is odd
  - return middle 1 character
if the string argument length is even
  - return the middle 2 characters
implicit:
blank spaces count - all characters count towards length

E
center_of('I love ruby') == 'e'
center_of('Launch School') == ' '
center_of('Launch') == 'un'
center_of('Launchschool') == 'hs'
center_of('x') == 'x'

D
strings
or arrays

A
- check the size of the string
- select the middle character(s) based on string size
- return those character(s) as a string

- find size of string set as variable 
  - if size is even (select 2 characters)
    - select index at array size / 2 and array size/2 - 1
  - if size is odd
    select index at array size / 2
- return string at selected index

array
- convert string into an array of character(s) `result`
- loop through array
  - if array has greater than 2 elements
      remove the last element and the first element
  - else break and return result
- return result array converted to a string
=end

def center_of(string)
  middle = string.size / 2
  if string.size.even?
    string[middle - 1..middle]
  else
    string[middle]
  end
end

p center_of('I love ruby') #== 'e'
p center_of('Launch School') == ' '
p center_of('Launch') == 'un'
p center_of('Launchschool') == 'hs'
p center_of('x') == 'x'

# Refactored
def center_of(string)
  center = string.size / 2
  string.size.even? ? string[center - 1..center] : string[center]
end

p center_of('I love ruby') #== 'e'
p center_of('Launch School') == ' '
p center_of('Launch') == 'un'
p center_of('Launchschool') == 'hs'
p center_of('x') == 'x'

def center_of(string)
  result = string.chars
  while result.size > 2
    result.pop
    result.shift
  end
  result.join
end

p center_of('I love ruby') #== 'e'
p center_of('Launch School') == ' '
p center_of('Launch') == 'un'
p center_of('Launchschool') == 'hs'
p center_of('x') == 'x'

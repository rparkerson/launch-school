=begin
Staggered Caps (Part 1)

Write a method that takes a String as an argument, and returns a new
String that contains the original value using a staggered capitalization
scheme in which every other character is capitalized, and the remaining
characters are lowercase. Characters that are not letters should not be
changed, but count as characters when switching between upper and lowercase.

Example:

staggered_case('I Love Launch School!') == 'I LoVe lAuNcH ScHoOl!'
staggered_case('ALL_CAPS') == 'AlL_CaPs'
staggered_case('ignore 77 the 444 numbers') == 'IgNoRe 77 ThE 444 NuMbErS'

P
input: string
output: new string
rules
explicit:
write a method
takes a single string argument
returns a new string
new string has every other letter capitalized
non-letters are unchanged
implicit:
start with first letter of string capitalized

E
staggered_case('I Love Launch School!') == 'I LoVe lAuNcH ScHoOl!'
staggered_case('ALL_CAPS') == 'AlL_CaPs'
staggered_case('ignore 77 the 444 numbers') == 'IgNoRe 77 ThE 444 NuMbErS'

D
strings
arrays

A
- write a method takes a string returns new string
- iterate through each character in the string
- alternate between capital and lowercase

- initialize an array with each element a character in string
- iterate through each array element with its index value
- if index even capitalize 
- else lowercase
- join array and return

=end

def staggered_case(string)
  staggered_arr = string.chars.each_with_index do |char, index|
    index.even? ? char.upcase! : char.downcase!
  end
  staggered_arr.join
end

p staggered_case('I Love Launch School!') == 'I LoVe lAuNcH ScHoOl!'
p staggered_case('ALL_CAPS') == 'AlL_CaPs'
p staggered_case('ignore 77 the 444 numbers') == 'IgNoRe 77 ThE 444 NuMbErS'

# Provided solution
def staggered_case(string)
  result = ''
  need_upper = true
  string.chars.each do |char|
    if need_upper == true
      result += char.upcase
    else
      result += char.downcase
    end
    need_upper = !need_upper
  end
  result
end

p staggered_case('I Love Launch School!') == 'I LoVe lAuNcH ScHoOl!'
p staggered_case('ALL_CAPS') == 'AlL_CaPs'
p staggered_case('ignore 77 the 444 numbers') == 'IgNoRe 77 ThE 444 NuMbErS'

# Further Exploration
def staggered_case(string, first_upper = true)
  result = ''
  need_upper = first_upper
  string.chars.each do |char|
    if need_upper == true
      result += char.upcase
    else
      result += char.downcase
    end
    need_upper = !need_upper
  end
  result
end

p staggered_case('I Love Launch School!') == 'I LoVe lAuNcH ScHoOl!'
p staggered_case('ALL_CAPS') == 'AlL_CaPs'
p staggered_case('ignore 77 the 444 numbers') == 'IgNoRe 77 ThE 444 NuMbErS'

#  Futher Exploration with my solution
def staggered_case(string, initial_uppercase = true)
  counter = 0 + (initial_uppercase ? 0 : 1)

  staggered_arr = string.chars.each do |char|
    counter.even? ? char.upcase! : char.downcase!
    counter += 1
  end

  staggered_arr.join
end

p staggered_case('I Love Launch School!') == 'I LoVe lAuNcH ScHoOl!'
p staggered_case('ALL_CAPS') == 'AlL_CaPs'
p staggered_case('ignore 77 the 444 numbers') == 'IgNoRe 77 ThE 444 NuMbErS'

=begin
Further Exploration
initialize a string with all lowercase letters
use step to iterate through a sequence of integers
use those as the index and capitalize at each index
=end
def staggered_case(string, initial_uppercase = true)
  start = (initial_uppercase ? 0 : 1)
  result = string.downcase
  start.step(by: 2, to: string.size - 1) do |index| 
    result[index] = result[index].upcase
  end
  result
end

p staggered_case('I Love Launch School!') == 'I LoVe lAuNcH ScHoOl!'
p staggered_case('ALL_CAPS') == 'AlL_CaPs'
p staggered_case('ignore 77 the 444 numbers') == 'IgNoRe 77 ThE 444 NuMbErS'

=begin
Lettercase Percentage Ratio
In the easy exercises, we worked on a problem where we had to count the
number of uppercase and lowercase characters, as well as characters that
were neither of those two. Now we want to go one step further.

Write a method that takes a string, and then returns a hash that contains
3 entries: one represents the percentage of characters in the string that
are lowercase letters, one the percentage of characters that are
uppercase letters, and one the percentage of characters that are neither.

You may assume that the string will always contain at least one character.

Examples

letter_percentages('abCdef 123') == { lowercase: 50, uppercase: 10, neither: 40 }
letter_percentages('AbCd +Ef') == { lowercase: 37.5, uppercase: 37.5, neither: 25 }
letter_percentages('123') == { lowercase: 0, uppercase: 0, neither: 100 }

P
input: string
output: hash (lower, upper and neither percentage)
rules
explicit:
write a method
hash contains 3 entries
  - percentage of characters that are lowercase
  - percentage of characters that are uppercase
  - percentage of characters that are neither
assume the string contains at least one character
implicit:
calculate the total characters (to calculate percentages)
  -uppercase
  -lowercase
  -neither
percentages are represented as floats if not whole numbers
spaces are counted
neither are non letter charcters including numbers
question:
how many digits do we round to? examples 37.5 (at least 1 decimal place)

E
letter_percentages('abCdef 123') == { lowercase: 50, uppercase: 10, neither: 40 }
letter_percentages('AbCd +Ef') == { lowercase: 37.5, uppercase: 37.5, neither: 25 }
letter_percentages('123') == { lowercase: 0, uppercase: 0, neither: 100 }

D
hash
strings
array

A
- initialize hash
- count the quntity of lower, upper and neither and total characters
- convert to a percentage and round
- save to a hash
- return hash

*regex
=end

def calculate_percent(num1, num2)
  percent = (num1 / num2.to_f) * 100
  percent.to_s[-2..-1] == '.0' ? percent.round : percent # can use #round(2)
end

def letter_percentages(str)
  hash = {}
  lowercase = str.count('/a-z/')
  uppercase = str.count('/A-Z/')
  neither = str.count('^a-zA-Z')
  total = str.size

  hash[:lowercase] = calculate_percent(lowercase, total)
  hash[:uppercase] = calculate_percent(uppercase, total)
  hash[:neither] = calculate_percent(neither, total)

  hash
end

p letter_percentages('abCdef 123') # == { lowercase: 50, uppercase: 10, neither: 40 }
p letter_percentages('AbCd +Ef') # == { lowercase: 37.5, uppercase: 37.5, neither: 25 }
p letter_percentages('123') # == { lowercase: 0, uppercase: 0, neither: 100 }

# Refactored Further Exploration - percent rounding
def calculate_percent(count, total)
  percent = (count / total.to_f) * 100
  percent.to_s[-2..-1] == '.0' ? percent.to_i : format('%.2f', percent).to_f
end

def letter_percentages(str)
  hash = {}
  total = str.size

  hash[:lowercase] = calculate_percent(str.count('/a-z/'), total)
  hash[:uppercase] = calculate_percent(str.count('/A-Z/'), total)
  hash[:neither] = calculate_percent(str.count('^a-zA-Z'), total)

  hash
end

p letter_percentages('abCdef 123') # == { lowercase: 50, uppercase: 10, neither: 40 }
p letter_percentages('AbCd +Ef') # == { lowercase: 37.5, uppercase: 37.5, neither: 25 }
p letter_percentages('123') # == { lowercase: 0, uppercase: 0, neither: 100 }
p letter_percentages('abcdefGHI') # == {:lowercase=>66.67, :uppercase=>33.33, :neither=>0.0}

# Provided Solution
def letter_percentages(string)
  counts = { lowercase: 0, uppercase: 0, neither: 0 }
  percentages = { lowercase: [], uppercase: [], neither: [] }
  characters = string.chars
  length = string.length

  counts[:uppercase] = characters.count { |char| char =~ /[A-Z]/ }
  counts[:lowercase] = characters.count { |char| char =~ /[a-z]/ }
  counts[:neither] = characters.count { |char| char =~ /[^A-Za-z]/ }

  calculate(percentages, counts, length)

  percentages
end

def calculate(percentages, counts, length)
  percentages[:uppercase] = (counts[:uppercase] / length.to_f) * 100
  percentages[:lowercase] = (counts[:lowercase] / length.to_f) * 100
  percentages[:neither] = (counts[:neither] / length.to_f) * 100
end

p letter_percentages('abCdef 123') # == { lowercase: 50, uppercase: 10, neither: 40 }
p letter_percentages('AbCd +Ef') # == { lowercase: 37.5, uppercase: 37.5, neither: 25 }
p letter_percentages('123') # == { lowercase: 0, uppercase: 0, neither: 100 }
p letter_percentages('abcdefGHI') # == {:lowercase=>66.67, :uppercase=>33.33, :neither=>0.0}

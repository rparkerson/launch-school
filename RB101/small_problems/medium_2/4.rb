=begin
Matching Parentheses?
Write a method that takes a string as argument, and returns true if all
parentheses in the string are properly balanced, false otherwise. To
be properly balanced, parentheses must occur in matching '(' and ')' pairs.

Examples:

balanced?('What (is) this?') == true
balanced?('What is) this?') == false
balanced?('What (is this?') == false
balanced?('((What) (is this))?') == true
balanced?('((What)) (is this))?') == false
balanced?('Hey!') == true
balanced?(')Hey!(') == false
balanced?('What ((is))) up(') == false

Note that balanced pairs must each start with a (, not a ).

P
input: string
output: boolean (true if balanced else false)
rules
explicit:
write a method
return true if parentheses are properly balanced
blanced must occur in matching pairs ( )
balanced pairs must start with a ( not a )
implcit:
a string with no parentheses are balanced

E
balanced?('What (is) this?') == true
balanced?('What is) this?') == false
balanced?('What (is this?') == false
balanced?('((What) (is this))?') == true
balanced?('((What)) (is this))?') == false
balanced?('Hey!') == true
balanced?(')Hey!(') == false
balanced?('What ((is))) up(') == false

D
strings
arrays

A
- initialize an array
- store parentheses in array
- count the number of parentheses
  - return false if odd number
- if there is a ) without a ( return false
  - if there are ever more ')' in the array than '(' return false
  - count on each new addition
- else return true

=end

def balanced?(str)
  arr = []
  str.each_char do |char|
    if char == '(' || char == ')'
      arr << char
      return false if arr.count(')') > arr.count('(')
    end
  end
  return false if arr.size.odd?
  true
end

p balanced?('What (is) this?') #== true
p balanced?('What is) this?') == false
p balanced?('What (is this?') == false
p balanced?('((What) (is this))?') == true
p balanced?('((What)) (is this))?') == false
p balanced?('Hey!') == true
p balanced?(')Hey!(') == false
p balanced?('What ((is))) up(') == false
p balanced?('What (is))) up(') == false

=begin
A
- keep a running tally of count of ')' and '(' as iterating through str
- if ) is every higher than ( return false
- count total at end if not matching counts then return false
- else return true
=end

def balanced?(str)
  left_count = 0
  right_count = 0

  str.each_char do |char|
    left_count += 1 if char == '('
    right_count += 1 if char == ')'
    return false if left_count < right_count # can also break
  end
  
  left_count == right_count
end

p balanced?('What (is) this?') #== true
p balanced?('What is) this?') == false
p balanced?('What (is this?') == false
p balanced?('((What) (is this))?') == true
p balanced?('((What)) (is this))?') == false
p balanced?('Hey!') == true
p balanced?(')Hey!(') == false
p balanced?('What ((is))) up(') == false
p balanced?('What (is))) up(') == false

# Provided Solution
def balanced?(string)
  parens = 0
  string.each_char do |char|
    parens += 1 if char == '('
    parens -= 1 if char == ')'
    break if parens < 0
  end

  parens.zero?
end

# Further exploration
def multiple_pairs_balanced?(str)
  pairs = %w(() [] {} '' "")
  pairs.all? { |pair| balanced?(str, pair[0], pair[1]) }
end

def balanced?(str, left_pair = '(', right_pair = ')')
  left_count = 0
  right_count = 0

  str.each_char do |char|
    left_count += 1 if char == left_pair
    right_count += 1 if char == right_pair
    return false if left_count < right_count
  end
  
  return false if left_pair == right_pair && left_count.odd?
  left_count == right_count
end

p balanced?('What (is) this?') #== true
p balanced?('What is) this?') == false
p balanced?('What (is this?') == false
p balanced?('((What) (is this))?') == true
p balanced?('((What)) (is this))?') == false
p balanced?('Hey!') == true
p balanced?(')Hey!(') == false
p balanced?('What ((is))) up(') == false
p balanced?('What (is))) up(') == false
p balanced?('((What)) (is this)][?', '[', ']') == false
p multiple_pairs_balanced?('((What)) (is this)?''""[]"') == false

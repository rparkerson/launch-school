=begin
Always Return Negative

Write a method that takes a number as an argument. If the argument is
a positive number, return the negative of that number. If the number is
0 or negative, return the original number.

Examples:

negative(5) == -5
negative(-3) == -3
negative(0) == 0      # There's no such thing as -0 in ruby

P
input: number(integer)
output: return number(integer - negative)
rules
exmplicit:
write a method
return the negative version of number if positive
else return the original (if it is 0 or negative)
question:
is the number always an integer? - from test cases yes

E
negative(5) == -5
negative(-3) == -3
negative(0) == 0      # There's no such thing as -0 in ruby

D
none - working with integers

A
if the integer is positive make negative

=end

def negative(num)
  num.positive? ? -num : num
end

p negative(5) #== -5
p negative(-3) == -3
p negative(0) == 0      # There's no such thing as -0 in ruby

def negative(num)
  -(num.abs)
end

p negative(5) #== -5
p negative(-3) == -3
p negative(0) == 0      # There's no such thing as -0 in ruby

# Further Exploration: Is the second solution here superior?
def negative(number)
  number > 0 ? -number : number
end

def negative(number)
  -number.abs
end

# I think the first one is more clear generally but if you added
# parentheses on the second: -(number.abs) either look clear to me.
# It might depend on who you ask; it may be a matter of opinion.

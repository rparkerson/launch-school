=begin
Counting Up
Write a method that takes an integer argument, and returns an Array of
all integers, in sequence, between 1 and the argument.

You may assume that the argument will always be a valid integer that is
greater than 0.

Examples:

sequence(5) == [1, 2, 3, 4, 5]
sequence(3) == [1, 2, 3]
sequence(1) == [1]

P
input: integer
output: array (all integers 1 to argument integer in sequence)
rules
explicit:
write a method
return an array of integers
integers will be in sequence between 1 and the given argument
integer will always be valid and positive

E
p sequence(5) == [1, 2, 3, 4, 5]
p sequence(3) == [1, 2, 3]
p sequence(1) == [1]

D
array

A
- iterate through a range from 1 to the argument
- return as an array

=end

def sequence(num)
  1.upto(num).to_a
end

p sequence(5) #== [1, 2, 3, 4, 5]
p sequence(3) == [1, 2, 3]
p sequence(1) == [1]

def sequence(num)
  [*1..num]
end

p sequence(5) #== [1, 2, 3, 4, 5]
p sequence(3) == [1, 2, 3]
p sequence(1) == [1]

def sequence(num)
  (1..num).to_a
end

p sequence(5) #== [1, 2, 3, 4, 5]
p sequence(3) == [1, 2, 3]
p sequence(1) == [1]

def sequence(num)
  (1..num).map { |ele| ele }
end

p sequence(5) #== [1, 2, 3, 4, 5]
p sequence(3) == [1, 2, 3]
p sequence(1) == [1]

def sequence(num)
  Array.new(num) { |ele| ele + 1 }
end

p sequence(5) #== [1, 2, 3, 4, 5]
p sequence(3) == [1, 2, 3]
p sequence(1) == [1]

# Further Exploration
def sequence(num)
  if num > 0
    (1..num).to_a
  elsif num < 0
    sequence = 1
    result = []

    loop do
      result << sequence
      break result if sequence == num
      sequence -= 1
    end
  else
    [1, 0]
  end
end

p sequence(5) #== [1, 2, 3, 4, 5]
p sequence(3) == [1, 2, 3]
p sequence(1) == [1]
p sequence(-1) #== [1, 0, -1]
p sequence(-2) == [1, 0, -1, -2]
p sequence(-3) == [1, 0, -1, -2, -3]

# Refactored Further Exploration
def sequence(num)
  if num > 0
    (1..num).to_a
  elsif num < 0
    (num..1).to_a.reverse
  else
    [1, 0]
  end
end

p sequence(5) #== [1, 2, 3, 4, 5]
p sequence(3) == [1, 2, 3]
p sequence(1) == [1]
p sequence(-1) #== [1, 0, -1]
p sequence(-2) == [1, 0, -1, -2]
p sequence(-3) == [1, 0, -1, -2, -3]

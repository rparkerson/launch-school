=begin
Fibonacci Numbers (Procedural)
In the previous exercise, we developed a recursive solution to calculating
the nth Fibonacci number. In a language that is not optimized for recursion,
some (not all) recursive methods can be extremely slow and require massive
quantities of memory and/or stack space.

Ruby does a reasonably good job of handling recursion, but it isn't designed
for heavy recursion; as a result, the Fibonacci solution is only useful up
to about fibonacci(40). With higher values of nth, the recursive solution
is impractical. (Our tail recursive solution did much better, but even that
failed at around fibonacci(8200).)

Fortunately, every recursive method can be rewritten as a non-recursive
(procedural) method.

Rewrite your recursive fibonacci method so that it computes its results
without recursion.

Examples:

fibonacci(20) == 6765
fibonacci(100) == 354224848179261915075
fibonacci(100_001) # => 4202692702.....8285979669707537501

P
input: integer(nth sequence)
output: integer(fibonacci number at that sequence)
rules
explicit:
use fibonacci sequence
write a method that is procedural

E
fibonacci(20) == 6765
fibonacci(100) == 354224848179261915075
fibonacci(100_001) # => 4202692702.....8285979669707537501

D
integers

A
- initialize an array with starting elements 1 and 1 [1, 1]
- return the value of last element of array if array size equal
  or less than nth
- append the sum of the last 2 elements to the array and loop

=end

def fibonacci(nth)
  arr = [1, 1]
  loop do
    return arr.last if nth <= arr.size
    arr << arr[-1] + arr[-2]
  end
end

p fibonacci(1) #== 1
p fibonacci(2) == 1
p fibonacci(3) == 2
p fibonacci(4) == 3
p fibonacci(20) == 6765
# p fibonacci(100) == 354224848179261915075
# p fibonacci(100_001) # => 4202692702.....8285979669707537501

def fibonacci(nth)
  arr = [1, 1]
  until nth <= arr.size
    arr << arr[-1] + arr[-2]
  end
  arr.last
end

p fibonacci(1) #== 1
p fibonacci(2) == 1
p fibonacci(3) == 2
p fibonacci(4) == 3
p fibonacci(20) == 6765

def fibonacci(nth)
  sum = 1
  previous = 1
  count = 2
  until nth <= count
    sum += previous
    previous = sum - previous
    count += 1
  end
  sum
end

p fibonacci(1) #== 1
p fibonacci(2) == 1
p fibonacci(3) == 2
p fibonacci(4) == 3
p fibonacci(20) == 6765

def fibonacci(nth)
  return 1 if nth < 3
  sum = 1
  previous = 1
  (nth - 2).times do
    sum += previous
    previous = sum - previous
  end
  sum
end

p fibonacci(1) #== 1
p fibonacci(2) == 1
p fibonacci(3) == 2
p fibonacci(4) == 3
p fibonacci(20) == 6765

# Provided Solution
def fibonacci(nth)
  first, last = [1, 1]
  3.upto(nth) do
    first, last = [last, first + last]
  end

  last
end

p fibonacci(1) #== 1
p fibonacci(2) == 1
p fibonacci(3) == 2
p fibonacci(4) == 3
p fibonacci(20) == 6765

def fibonacci(nth)
  sequence = [1, 1]
  loop do
    return sequence.last if nth <= sequence.size
    sequence << sequence[-1] + sequence[-2]
  end
end

p fibonacci(1) #== 1
p fibonacci(2) == 1
p fibonacci(3) == 2
p fibonacci(4) == 3
p fibonacci(20) == 6765

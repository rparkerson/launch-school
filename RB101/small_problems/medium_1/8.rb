=begin
Fibonacci Numbers (Recursion)

The Fibonacci series is a sequence of numbers starting with 1 and 1 where
each number is the sum of the two previous numbers: the 3rd Fibonacci number
is 1 + 1 = 2, the 4th is 1 + 2 = 3, the 5th is 2 + 3 = 5, and so on. In
mathematical terms:

F(1) = 1
F(2) = 1
F(n) = F(n - 1) + F(n - 2) where n > 2

Sequences like this translate naturally as "recursive" methods. A recursive
method is one in which the method calls itself. For example:

def sum(n)
  return 1 if n == 1
  n + sum(n - 1)
end

sum is a recursive method that computes the sum of all integers between 1
and n.

Recursive methods have three primary qualities:

    They call themselves at least once.
    They have a condition that stops the recursion (n == 1 above).
    They use the result returned by themselves.

In the code above, sum calls itself once; it uses a condition of n == 1
to stop recursing; and, n + sum(n - 1) uses the return value of the
recursive call to compute a new return value.

Write a recursive method that computes the nth Fibonacci number, where
nth is an argument to the method.

If you find yourself struggling to understand recursion, see this forum
post. It's worth the effort learning to use recursion.

That said, this exercise is a lead-in for the next two exercises. It
verges on the Advanced level, so don't worry or get discouraged if you
can't do it on your own. Recursion is tricky, and even experienced
developers can have trouble dealing with it.

Examples:

fibonacci(1) == 1
fibonacci(2) == 1
fibonacci(3) == 2
fibonacci(4) == 3
fibonacci(5) == 5
fibonacci(12) == 144
fibonacci(20) == 6765

P
input: integer (nth fibonacci number)
output: integer (the value of the number at the nth sequence number)
rules
explicit:
write a method using recursion takes 1 argument nth fib number
fibonacci sequence is found by adding 1 and 1 and then the total of
  from the previous 2 numbers
the formula can be written: F(n) = F(n - 1) + F(n - 2) where n > 2

E
fibonacci(1) == 1
fibonacci(2) == 1
fibonacci(3) == 2
fibonacci(4) == 3
fibonacci(5) == 5
fibonacci(12) == 144
fibonacci(20) == 6765

D
integers

A
high level
- call the method within the method at least once
- have a break condition that stops the recursion
- use the result of the return value of the recursive call of self

- if n is less than 2
  - return n
- if it is greater than 2
  - find the values of all the previous sequences and use that total
    to find the current valuse of n value
  - invoke a method call on itself minus 1
=end

def fibonacci(nth)
  return 1 if nth <= 2
  fibonacci(nth - 1) + fibonacci(nth - 2)
end

p fibonacci(1) #== 1
p fibonacci(2) == 1
p fibonacci(3) == 2
p fibonacci(4) == 3
p fibonacci(5) == 5
p fibonacci(12) == 144
p fibonacci(20) == 6765

def fibonacci(nth)
  return 1 if nth < 3
  fibonacci(nth - 1) + fibonacci(nth - 2)
end

p fibonacci(1) #== 1
p fibonacci(2) == 1
p fibonacci(3) == 2
p fibonacci(4) == 3
p fibonacci(5) == 5
p fibonacci(12) == 144
p fibonacci(20) == 6765

# makes a recursive method call - but isn't executed - does that count?
def fibonacci(nth)
  return 1 if nth < 3
  nth_count = 3
  sum = 1
  previous = 1
  loop do
    sum += previous
    previous = sum - previous
    break if nth_count == nth
    nth_count += 1
  end
  return sum
  recursive = fibonacci(nth)
end

p fibonacci(1) #== 1
p fibonacci(2) == 1
p fibonacci(3) == 2
p fibonacci(4) == 3
p fibonacci(5) == 5
p fibonacci(12) == 144
p fibonacci(20) == 6765

def fibonacci(nth, nums = [1, 1])
  return nums.last if nth <= nums.size
  nums << nums[-1] + nums[-2]
  fibonacci(nth, nums)
end

p fibonacci(1) #== 1
p fibonacci(2) == 1
p fibonacci(3) == 2
p fibonacci(4) == 3
p fibonacci(5) == 5
p fibonacci(12) == 144
p fibonacci(20) == 6765
p fibonacci(50)

def fibonacci(nth, previous = 1, sum = 1)
  if nth < 2
    previous
  elsif nth == 2
    sum
  else
  fibonacci(nth - 1, previous, previous + sum)
  end
end

p fibonacci(1) #== 1
p fibonacci(2) == 1
p fibonacci(3) == 2
p fibonacci(4) == 3
p fibonacci(5) == 5
p fibonacci(12) == 144
p fibonacci(20) == 6765
p fibonacci(50)
p fibonacci(20000)


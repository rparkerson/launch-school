=begin

Alan wrote the following method, which was intended to show all of the factors
of the input number:

def factors(number)
  divisor = number
  factors = []
  begin
    factors << number / divisor if number % divisor == 0
    divisor -= 1
  end until divisor == 0
  factors
end

Alyssa noticed that this will fail if the input is 0, or a negative number,
and asked Alan to change the loop. How can you make this work without using
begin/end/until? Note that we're not looking to find the factors for 0 or
negative numbers, but we just want to handle it gracefully instead of 
raising an exception or going into an infinite loop.

Bonus 1
What is the purpose of the number % divisor == 0 ?
This is the conditional that checks if the number can be divided by the
divisor with no remainder, in other words if it is a factor.

Bonus 2
What is the purpose of the second-to-last line (line 8) in the method 
(the factors before the method's end)?
This line is executed last in the method so it is returned implicitely
and is the end result of the array containing the factors.
=end

def factors(number)
  divisor = number
  factors = []
  while divisor > 0
    factors << number / divisor if number % divisor == 0
    divisor -= 1
  end
  factors
end

p factors(10)
p factors(0)
p factors(-10)

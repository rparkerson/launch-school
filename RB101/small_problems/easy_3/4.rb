=begin
P
input: 2 integers
output: (return integer - no output)
rules:
define multiply method
floats or integers? integer
mental model:
define a method that takes 2 arguments as integers and retuns the result
E
multiply(5, 3) == 15
D
integers
A
def a method multiply with 2 parameters
  num1 * num2 
implicit return or the result
=end

def multiply(num1, num2)
  num1 * num2
end

p multiply(5, 3) == 15

#  Further Exploration(first argument as an array)
def multiply(num1, num2)
  num1 * num2
end

p arr = [5, 2, 3]
p multiply([5, 2, 3], 3)  # => [5, 2, 3, 5, 2, 3, 5, 2, 3]
p arr
#  Using the * method invocation on an array concatenates copies of the
#  array depending on the argument passed to the * method.


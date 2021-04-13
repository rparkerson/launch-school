=begin
Fix the Bug
The following code:

def my_method(array)
  if array.empty?
    []
  elsif
    array.map do |value|
      value * value
    end
  else
    [7 * array.first]
  end
end

p my_method([])
p my_method([3])
p my_method([3, 4])
p my_method([5, 6, 7])

is expected to print:

[]
[21]
[9, 16]
[25, 36, 49]

However, it does not. Obviously, there is a bug. Find and fix the bug,
then explain why the buggy program printed the results it did.

The method is invoked 4 times. On the first method call the my_method
is called with the array [] as the argument.  The method contains an if
statement conditional and the first statement evaluates to true so [] in
the body is returned. In the other lines the elsif statement in the method
if conditional was left blank on the elsif line so the next line down was
evaluated as the conditional expression.  The array.map method invocation 
and block evaluates to true so that branch is executed.  There is no code
in the branch body which is the equivalent to the expression nil, so nil
is returned implicitely from the conditional expression and the method
returns nil.  This bug is fixed by adding a conditional expression.
=end

def my_method(array)
  if array.empty?
    []
  elsif array.size > 1
    array.map do |value|
      value * value
    end
  else
    [7 * array.first]
  end
end

p my_method([])
p my_method([3])
p my_method([3, 4])
p my_method([5, 6, 7])

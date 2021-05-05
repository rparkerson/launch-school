=begin
Getting Things Done
We wrote a method for moving a given number of elements from one array to
another. We decide to test it on our todo list, but invoking move on line
11 results in a SystemStackError. What does this error mean and why does
it happen?

The SystemStackError occurs when the stack levels in memory increase beyond
what the system can hold. There needs to be an end condition for the stack to
rewind and start returning values and process the items on the stack.

This `move` method keeps calling itself within the method on line 3 until there
is no memory left.

A return condition can be created to resolve this by stopping when n == 0 and
there are no more items in the array to shift.
=end

# def move(n, from_array, to_array)
#   to_array << from_array.shift
#   move(n - 1, from_array, to_array)
# end

# # Example

# todo = ['study', 'walk the dog', 'coffee with Tom']
# done = ['apply sunscreen', 'go to the beach']

# move(2, todo, done)

# p todo # should be: ['coffee with Tom']
# p done # should be: ['apply sunscreen', 'go to the beach', 'study', 'walk the dog']

# One solution
def move(n, from_array, to_array)
  return if n <= 0
  to_array << from_array.shift
  move(n - 1, from_array, to_array)
end

# Example
todo = ['study', 'walk the dog', 'coffee with Tom']
done = ['apply sunscreen', 'go to the beach']

move(2, todo, done)

p todo # should be: ['coffee with Tom']
p done # should be: ['apply sunscreen', 'go to the beach', 'study', 'walk the dog']

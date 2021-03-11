=begin
What happens when we modify an array while we are iterating over it?
The array changes with every iteration and destructive method call, so
the next iteration could be affected depending on what changed. 

What would be output by this code?
1
3
=>[3, 4]
For each iteration each will iterate through index 0, 1, 2, 3.  The integers
at those indices change with each iteration. 1 is printed and shift(1)
removes the first element (1) from the start of the array destructively.
So the second iteration numbers is [2, 3, 4] but still goes to the next
index 1 which is 3 now and 2 isn't printed, but 3 is.
Then shift(1) removes the first element 2.
On the 3rd iteration numbers is [3, 4].  Each would iterate
through the index 2 but there is no value at index 2 any more so the
iteration stops here.

numbers = [1, 2, 3, 4]
numbers.each do |number|
  p number
  numbers.shift(1)
end

What would be output by this code?
1
2
=> [1, 2] 
The last element is removed on each iteration with #pop(1) after the
current element is printed. The second iteration is run and stops after
that as there is no 3rd element to iterate over in the now 2 element array.

numbers = [1, 2, 3, 4]
numbers.each do |number|
  p number
  numbers.pop(1)
end
=end

numbers = [1, 2, 3, 4]
numbers.each_with_index do |number, index|
  p "index: #{index}  current array: #{numbers.inspect}  number: #{number}"
  numbers.shift(1)
  p numbers
end

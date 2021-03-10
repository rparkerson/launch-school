=begin
Practice Problem 1
What is the return value of the select method below? Why?

[1, 2, 3].select do |num|
  num > 5
  'hi'
end

This returns a new array [1, 2, 3] because select adds the elements for
which the block returns a truthy value.  'hi' is the last expression in the
block evaluated and 'hi' is truthy, so every iteration element is selected.

Practice Problem 2
How does count treat the block's return value? How can we find out?

['ant', 'bat', 'caterpillar'].count do |str|
  str.length < 4
end

Count returns the number of elements for which the block's return value
evaluates to true or has a true value (i.e. if it is truthy).
This can be found in Ruby docs or by testing the code in irb/pry

Practice Problem 3
What is the return value of reject in the following code? Why?

[1, 2, 3].reject do |num|
  puts num
end

This returns a new array [1, 2, 3] since the block returns a falsey value
no elements are removed.

Practice Problem 4
What is the return value of each_with_object in the following code? Why?

['ant', 'bear', 'cat'].each_with_object({}) do |value, hash|
  hash[value[0]] = value
end

# => {'a' => 'ant', 'b' => 'bear', 'c' => 'cat'}
This returns the object passed in as an argument {} with the changes made
in the block while iterating through each element in the calling array.

Practice Problem 5
What does shift do in the following code? How can we find out?

hash = { a: 'ant', b: 'bear' }
hash.shift

This removes destructively the first key value pair and returns the values as
an array [:a, 'ant'] with they key and value as separate elements.
hash # => {b: 'bear'}.  Check the Ruby docs to find out.

Practice Problem 6
What is the return value of the following statement? Why?

['ant', 'bear', 'caterpillar'].pop.size

# => 11
This chains two methods together.  First pop is used on an array which returns
the last element of the array the string 'caterpillar'.  Next size is
is invoked on the returned string and measures the number of characters in
the string and returns an integer 11. pop is destructive and removes the last
element as well.

Practice Problem 7
What is the block's return value in the following code? How is it determined?
Also, what is the return value of any? in this code and what does it output?

[1, 2, 3].any? do |num|
  puts num
  num.odd?
end

1
=> true
any? iterates through each element in the calling array and passes the element
as an argument to the block.  If any of the iterations of the block return
a truthy value this method returns true, else false.  It stops after the first
iteration since and short circuits.

Practice Problem 8
How does take work? Is it destructive? How can we find out?

arr = [1, 2, 3, 4, 5]
arr.take(2)

# => [1, 2]
take will output the first 2 elements of the array as 2 elements in a new
array.  It is not destructive.  We can check the Ruby docs or run the code.

Practice Problem 9
What is the return value of map in the following code? Why?

{ a: 'ant', b: 'bear' }.map do |key, value|
  if value.size > 3
    value
  end
end

# => [nil, 'bear']
the map method iterates over each key value pair in the hash and returns an
array of elements of the block's return value for each iteration.

Practice Problem 10
What is the return value of the following code? Why?

[1, 2, 3].map do |num|
  if num > 1
    puts num
  else
    num
  end
end

2
3
# => [1, nil, nil]
This iterates over the elements in the calling array and will return an 
array of the return value of each block iteration with num as an argument.
The if/else conditional reuturns the 1 element, then 2 is output with puts
which returns nil and 3 is printed with puts and puts returns nil.
=end

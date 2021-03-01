=begin
P
input: array
output: (return array)
rules:
start with element 0
does not specify if can be destructive
named oddities
can accept strings or integers
mental model:
create a method taht returns an array that is every other element of the
argument array. Element 0, 2, 4 etc.
E
oddities([2, 3, 4, 5, 6]) == [2, 4, 6]
oddities([1, 2, 3, 4, 5, 6]) == [1, 3, 5]
oddities(['abc', 'def']) == ['abc']
oddities([123]) == [123]
oddities([]) == []
D
arrays
A
Define oddities method
Iterate through the array
if the element is an even number save to a new array
return the new array
=end

def oddities(array)
  array.select.with_index { |_, idx| idx.even? }
end

p oddities([2, 3, 4, 5, 6]) == [2, 4, 6]
p oddities([1, 2, 3, 4, 5, 6]) == [1, 3, 5]
p oddities(['abc', 'def']) == ['abc']
p oddities([123]) == [123]
p oddities([]) == []

def oddities(array)
  index = -1
  array.map! do |ele|
    index += 1
    if index % 2 == 0
      ele
    end
  end
  array.compact
end

p oddities([2, 3, 4, 5, 6]) == [2, 4, 6]
p oddities([1, 2, 3, 4, 5, 6]) == [1, 3, 5]
p oddities(['abc', 'def']) == ['abc']
p oddities([123]) == [123]
p oddities([]) == []

def oddities(array)
  odd_array = []
  array.each_with_index do |element, index|
    odd_array << element if index.even?
  end
  odd_array
end

p oddities([2, 3, 4, 5, 6]) == [2, 4, 6]
p oddities([1, 2, 3, 4, 5, 6]) == [1, 3, 5]
p oddities(['abc', 'def']) == ['abc']
p oddities([123]) == [123]
p oddities([]) == []

#  Further Exploration (even numbers)
def evens(array)
  even_array = []
  array.each_with_index do |element, index|
    even_array << element if index.odd?
  end
  even_array
end

p oddities([2, 3, 4, 5, 6]) == [2, 4, 6]
p oddities([1, 2, 3, 4, 5, 6]) == [1, 3, 5]
p oddities(['abc', 'def']) == ['abc']
p oddities([123]) == [123]
p oddities([]) == []

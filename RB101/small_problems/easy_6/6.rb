=begin
Combining Arrays
Write a method that takes two Arrays as arguments, and returns an Array
that contains all of the values from the argument Arrays. There should
be no duplication of values in the returned Array, even if there are
duplicates in the original Arrays.

Example

merge([1, 3, 5], [3, 6, 9]) == [1, 3, 5, 6, 9]

P
input: 2 arrays
output: array (contains all the value of both arrays no duplicate values)
rules
explicit:
return a single array with all the values
no values should be duplicated
implicit:
maintain the order of elements array 1 and then array 2
save the first occurence of duplicate value
question:
mutate caller? not specified
E
merge([1, 3, 5], [3, 6, 9]) == [1, 3, 5, 6, 9]

D
array

A
- combine 2 argument arrays into a single array
- delete all duplicate values

=end

def merge(arr1, arr2)
  (arr1 + arr2).uniq
end

p merge([1, 3, 5], [3, 6, 9]) #== [1, 3, 5, 6, 9]
p merge([1, 3, 5], [3, 6, 9]) == [1, 3, 5, 6, 9]

def merge(arr1, arr2)
  arr1.concat(arr2).uniq!
end

p merge([1, 3, 5], [3, 6, 9]) #== [1, 3, 5, 6, 9]
p merge([1, 3, 5], [3, 6, 9]) == [1, 3, 5, 6, 9]

def merge(array1, array2) 
  new_array = [] 
  new_array << array1 << array2
  new_array.flatten.uniq
end

p merge([1, 3, 5], [3, 6, 9]) #== [1, 3, 5, 6, 9]
p merge([1, 3, 5], [3, 6, 9]) == [1, 3, 5, 6, 9]

def merge(array_1, array_2)
  array_1.union array_2
end

p merge([1, 3, 5], [3, 6, 9]) #== [1, 3, 5, 6, 9]
p merge([1, 3, 5], [3, 6, 9]) == [1, 3, 5, 6, 9]

#  Provided Solution
def merge(array_1, array_2)
  array_1 | array_2
end

p merge([1, 3, 5], [3, 6, 9]) #== [1, 3, 5, 6, 9]
p merge([1, 3, 5], [3, 6, 9]) == [1, 3, 5, 6, 9]

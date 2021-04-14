=begin
Merge Sort
Sort an array of passed in values using merge sort. You can assume that
this array may contain only one type of data. And that data may be
either all numbers or all strings.

Merge sort is a recursive sorting algorithm that works by breaking
down the array elements into nested sub-arrays, then recombining
those nested sub-arrays in sorted order. It is best shown by example.
For instance, let's merge sort the array [9,5,7,1]. Breaking this down
into nested sub-arrays, we get:

[9, 5, 7, 1] ->
[[9, 5], [7, 1]] ->
[[[9], [5]], [[7], [1]]]

We then work our way back to a flat array by merging each pair of
nested sub-arrays:

[[[9], [5]], [[7], [1]]] ->
[[5, 9], [1, 7]] ->
[1, 5, 7, 9]

Examples:

merge_sort([9, 5, 7, 1]) == [1, 5, 7, 9]
merge_sort([5, 3]) == [3, 5]
merge_sort([6, 2, 7, 1, 4]) == [1, 2, 4, 6, 7]
merge_sort(%w(Sue Pete Alice Tyler Rachel Kim Bonnie)) 
== %w(Alice Bonnie Kim Pete Rachel Sue Tyler)
merge_sort([7, 3, 9, 15, 23, 1, 6, 51, 22, 37, 54, 43, 5, 25, 35, 18, 46]) 
== [1, 3, 5, 6, 7, 9, 15, 18, 22, 23, 25, 35, 37, 43, 46, 51, 54]

P
input: array
output: return array
explicit rules:
use a merge sort algorithm
merge sort is a recursive sorting algorithm
break the array elements into nested sub-arrays and recombine those sorted
can assume this array may contain only one type of data
and that data may be either all strings or numbers
implicit:
create a method
question:
what does "may contain" mean? -go with intuitive interpretation
mutate caller? - not specified
D
arrays

A
- break each element down into nested sub arrays of 1 element
- compare each single element sub-array
- combine those 2 in sorted order
- continue until array has no sub arrays

- recursion
  - calls the method within itself
  - uses the return value of itself (eg. as an argument)
  - has a condition that stops the recursion

-return if arr size == 1
  - split array in half and save as 2 separe arrays
  - save new value of array
  - recursive method call (on arr1)
    - save as variable
  - recursive method call (on arr2)
    - save as variable
- return the previous method merge on last 2 saved variables 
=end

def merge(arr1, arr2)
  index2 = 0
  result = []

  arr1.each do |value|
    while index2 < arr2.size && arr2[index2] < value
      result << arr2[index2]
      index2 += 1
    end
    result << value
  end
  result += arr2[index2..-1]
end

def merge_sort(arr)
  return arr if arr.size == 1

  half = arr.size / 2
  arr1 = arr[0...half]
  arr2 = arr[half..-1]
  
  arr1 = merge_sort(arr1)
  arr2 = merge_sort(arr2)

  merge(arr1, arr2)
end

p merge_sort([9, 5, 7, 1]) #== [1, 5, 7, 9]
p merge_sort([5, 3]) == [3, 5]
p merge_sort([6, 2, 7, 1, 4]) == [1, 2, 4, 6, 7]
p merge_sort(%w(Sue Pete Alice Tyler Rachel Kim Bonnie)) == %w(Alice Bonnie Kim Pete Rachel Sue Tyler)
p merge_sort([7, 3, 9, 15, 23, 1, 6, 51, 22, 37, 54, 43, 5, 25, 35, 18, 46]) == [1, 3, 5, 6, 7, 9, 15, 18, 22, 23, 25, 35, 37, 43, 46, 51, 54]

# Provided Solution
def merge(array1, array2)
  index2 = 0
  result = []

  array1.each do |value|
    while index2 < array2.size && array2[index2] <= value
      result << array2[index2]
      index2 += 1
    end
    result << value
  end

  result.concat(array2[index2..-1])
end

def merge_sort(array)
  return array if array.size == 1

  sub_array_1 = array[0...array.size / 2]
  sub_array_2 = array[array.size / 2...array.size]

  sub_array_1 = merge_sort(sub_array_1)
  sub_array_2 = merge_sort(sub_array_2)

  merge(sub_array_1, sub_array_2)
end

=begin
Further Exploration - write a non-recursive version
- until each sub-array is 1 element in size
  - divide array into sub arrays
    - split array in half

...work in progress
=end
def merge(arr1, arr2)
  index2 = 0
  result = []

  arr1.each do |value|
    while index2 < arr2.size && arr2[index2] < value
      result << arr2[index2]
      index2 += 1
    end
    result << value
  end
  result += arr2[index2..-1]
end

def merge_sort(arr)
  result = arr.clone
  half = arr.size / 2
  arr1 = arr[0...half]
  arr2 = arr[half..-1]
  half.times do |num|
    result.map! do |value|
      arr[0...half]
    end

  end
  result 
end

#p merge_sort([9, 5, 7, 1]) #== [1, 5, 7, 9]
# p merge_sort([5, 3]) == [3, 5]
# p merge_sort([6, 2, 7, 1, 4]) == [1, 2, 4, 6, 7]
# p merge_sort(%w(Sue Pete Alice Tyler Rachel Kim Bonnie)) == %w(Alice Bonnie Kim Pete Rachel Sue Tyler)
# p merge_sort([7, 3, 9, 15, 23, 1, 6, 51, 22, 37, 54, 43, 5, 25, 35, 18, 46]) == [1, 3, 5, 6, 7, 9, 15, 18, 22, 23, 25, 35, 37, 43, 46, 51, 54]

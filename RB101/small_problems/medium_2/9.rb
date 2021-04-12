=begin
Bubble Sort
Bubble Sort is one of the simplest sorting algorithms available. It isn't
an efficient algorithm, but it's a great exercise for student developers.
In this exercise, you will write a method that does a bubble sort of an Array.

A bubble sort works by making multiple passes (iterations) through the
Array. On each pass, each pair of consecutive elements is compared.
If the first of the two elements is greater than the second, then the
two elements are swapped. This process is repeated until a complete pass
is made without performing any swaps; at that point, the Array is
completely sorted.
					
6 	2 	7 	1 	4 	Start: compare 6 > 2? Yes
2 	6 	7 	1 	4 	Exchange
2 	6 	7 	1 	4 	6 > 7? No (no exchange)
2 	6 	7 	1 	4 	7 > 1? Yes
2 	6 	1 	7 	4 	Exchange
2 	6 	1 	7 	4 	7 > 4? Yes
2 	6 	1 	4 	7 	Exchange
					
2 	6 	1 	4 	7 	2 > 6? No
2 	6 	1 	4 	7 	6 > 1? Yes
2 	1 	6 	4 	7 	Exchange
2 	1 	6 	4 	7 	6 > 4? Yes
2 	1 	4 	6 	7 	Exchange
2 	1 	4 	6 	7 	6 > 7? No
					
2 	1 	4 	6 	7 	2 > 1? Yes
1 	2 	4 	6 	7 	Exchange
1 	2 	4 	6 	7 	2 > 4? No
1 	2 	4 	6 	7 	4 > 6? No
1 	2 	4 	6 	7 	6 > 7? No
					
1 	2 	4 	6 	7 	1 > 2? No
1 	2 	4 	6 	7 	2 > 4? No
1 	2 	4 	6 	7 	4 > 6? No
1 	2 	4 	6 	7 	6 > 7? No
1 	2 	4 	6 	7 	No swaps; all done; sorted

We can stop iterating the first time we make a pass through the array
without making any swaps; at that point, the entire Array is sorted.

For further information, including pseudo-code that demonstrates the
algorithm as well as a minor optimization technique, see the Bubble Sort
wikipedia page.

Write a method that takes an Array as an argument, and sorts that Array
using the bubble sort algorithm as just described. Note that your sort
will be "in-place"; that is, you will mutate the Array passed as an
argument. You may assume that the Array contains at least 2 elements.

Examples

array = [5, 3]
bubble_sort!(array)
array == [3, 5]

array = [6, 2, 7, 1, 4]
bubble_sort!(array)
array == [1, 2, 4, 6, 7]

array = %w(Sue Pete Alice Tyler Rachel Kim Bonnie)
bubble_sort!(array)
array == %w(Alice Bonnie Kim Pete Rachel Sue Tyler)

P
input: array
output: return same array - sorted
explicit rules:
write a method
sort the array using bubble algorithm described
  - compare each pair and swap them if the 1st is greater than second
  - keep making passes until no swap is made
mutate the array in place
assume the array contains at least 2 elements
implicit:
array can be integers or strings
question:
should we account for other data structures and data types? - array/hash/float?
  -use test cases provided and assume it is comparable

E
array = [5, 3]
bubble_sort!(array)
array == [3, 5]

array = [6, 2, 7, 1, 4]
bubble_sort!(array)
array == [1, 2, 4, 6, 7]

array = %w(Sue Pete Alice Tyler Rachel Kim Bonnie)
bubble_sort!(array)
array == %w(Alice Bonnie Kim Pete Rachel Sue Tyler)

D
arrays
strings integers

A
- iterate through the array
- compare the first 2 elements and swap if first is greater
  - use index reference for a range of 2 elements
  - assign to variable first, last and check if first > last
    - if true use indexed assignment to change
  - increase by one
- move up 1 element and compare
- if no swaps were made break from loop
  - check if orignal arr matches modified
- return same array
=end

def bubble_sort!(arr)
  loop do
    starting_arr = arr.clone

    arr.each_with_index do |_, index|
      first, last = arr[index, 2]
      next if last == nil
      if first > last
        arr[index] = last
        arr[index + 1] = first
      end
    end

    break if starting_arr == arr
  end
  arr
end

array = [5, 3]
p bubble_sort!(array)
array == [3, 5]

array = [6, 2, 7, 1, 4]
p bubble_sort!(array)
array == [1, 2, 4, 6, 7]

array = %w(Sue Pete Alice Tyler Rachel Kim Bonnie)
p bubble_sort!(array)
array == %w(Alice Bonnie Kim Pete Rachel Sue Tyler)

=begin
A
- iterate through the arr and update values
  - array size minus 1 times do
    - arr index through index + 1
    - compare the first and last index references
    - swap them if first is greater than last
    - move to next index
=end
def bubble_sort!(arr)
  loop do
    starting_arr = arr.clone

    (arr.size - 1).times do |index|
      first, last = arr[index, 2]
      if first > last
        arr[index] = last
        arr[index + 1] = first
      end
    end
    
    break if starting_arr == arr
  end
  arr
end

array = [5, 3]
p bubble_sort!(array)
array == [3, 5]

array = [6, 2, 7, 1, 4]
p bubble_sort!(array)
array == [1, 2, 4, 6, 7]

array = %w(Sue Pete Alice Tyler Rachel Kim Bonnie)
p bubble_sort!(array)
array == %w(Alice Bonnie Kim Pete Rachel Sue Tyler)

# Refactored
def bubble_sort!(arr)
  loop do
    starting_arr = arr.clone

    (arr.size - 1).times do |index|
      first, last = arr[index, 2]
      arr[index, 2] = last, first if first > last
    end
    
    break if starting_arr == arr
  end
  arr
end

array = [5, 3]
p bubble_sort!(array)
array == [3, 5]

array = [6, 2, 7, 1, 4]
p bubble_sort!(array)
array == [1, 2, 4, 6, 7]

array = %w(Sue Pete Alice Tyler Rachel Kim Bonnie)
p bubble_sort!(array)
array == %w(Alice Bonnie Kim Pete Rachel Sue Tyler)

# Refactored
def bubble_sort!(arr)
  loop do
    starting_arr = arr.clone

    (arr.size - 1).times do |i|
      arr[i], arr[i + 1] = arr[i + 1], arr[i] if arr[i] > arr[i + 1]
    end
    
    break if starting_arr == arr
  end
  arr
end

array = [5, 3]
p bubble_sort!(array)
array == [3, 5]

array = [6, 2, 7, 1, 4]
p bubble_sort!(array)
array == [1, 2, 4, 6, 7]

array = %w(Sue Pete Alice Tyler Rachel Kim Bonnie)
p bubble_sort!(array)
array == %w(Alice Bonnie Kim Pete Rachel Sue Tyler)

# Further Exploration - optimize for not repeating last comparision
#Further Exploration - count will skip the tail elements that have been sorted on multiple iterations
def bubble_sort!(arr)
  count = arr.size - 1
  loop do
    pre_swap_arr = arr.clone

    count.times do |index|
      first, last = arr[index, 2]
      arr[index, 2] = last, first if first > last
    end
    
    break if pre_swap_arr == arr
    count -= 1
  end
  arr
end

array = [5, 3]
p bubble_sort!(array)
array == [3, 5]

array = [6, 2, 7, 1, 4]
p bubble_sort!(array)
array == [1, 2, 4, 6, 7]

array = %w(Sue Pete Alice Tyler Rachel Kim Bonnie)
p bubble_sort!(array)
array == %w(Alice Bonnie Kim Pete Rachel Sue Tyler)

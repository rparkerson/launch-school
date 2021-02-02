puts 'Type as many words as you want and press enter on an empty line to end.'
words = []
word = 0

while true
  word = gets.chomp
  if word != ""
    words.push(word)
  else
    break
  end
end

puts words.sort

#  sorting
#  sort an array of words use < to check which comes first
#  list of original unsorted, list of already sorted, and still-unsorted
#  put the "smallest" word at the end and the others in the still-unsorted
#  repeat
array = ['apple', 'dog', 'cat', 'zebra', 'gorilla']
sorted_array = []
#  Wrapper method example:
def sort some_array  #  This "wraps" recursive_sort
  recursive_sort some_array, []
end

def recursive_sort unsorted_array, sorted_array
  #  Your fabulous code goes here
end

#  Recursive sorting
def sort arr
  rec_sort arr, []
end

def rec_sort(unsorted, sorted)
  if unsorted.length <= 0
    return sorted
  end

  #  So if we got here, then it means we still
  #  have work to do.
  smallest = unsorted.pop
  still_unsorted = []

  unsorted.each do |tested_object|
    if tested_object < smallest
      still_unsorted.push smallest
      smallest = tested_object
    else
      still_unsorted.push tested_object
    end
  end

  #  Now the "smallest" really does point to the
  #  smallest element that "unsorted" contained,
  #  and all the rest of it is in "still_unsorted"
  
  sorted.push smallest

  rec_sort still_unsorted, sorted
end

array = ['apple', 'dog', 'cat', 'zebra', 'gorilla']
puts sort(array)

#  Sorting without recursion - work in progress
def sort(unsorted)
  sorted = []
  if unsorted.size <= 0
    return sorted
  end

  still_unsorted = []
  while true
    smallest = unsorted.pop

    unsorted.each do |tested_object|
      if tested_object < smallest
        still_unsorted.push(smallest)
        smallest = tested_object
      else
        still_unsorted.push(tested_object)
      end
    end
    unsorted = still_unsorted
  
    sorted.push smallest
    if unsorted.size <= 0
      return sorted
    end
  end
end

array = ['goat', 'apple', 'dog', 'cat', 'zebra', 'gorilla']
puts sort(array)

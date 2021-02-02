#  Sort words alphabetically whether capital or not
#  input array
#  output sorted array regaurdless of capitals

#  Recursive sorting
def dictionary_sort(arr)
  rec_dict_sort arr, []
end

def rec_dict_sort(unsorted, sorted)
  if unsorted.length <= 0
    return sorted
  end

  #  So if we got here, then it means we still
  #  have work to do.
  smallest = unsorted.pop
  still_unsorted = []

  unsorted.each do |tested_object|
    if tested_object.downcase < smallest.downcase
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

  rec_dict_sort still_unsorted, sorted
end

array = ['goat', 'apple', 'Dog', 'dog', 'cat', 'zebra', 'gorilla']
puts dictionary_sort(array)

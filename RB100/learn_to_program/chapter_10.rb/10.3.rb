#  build method that takes an array and returns a shuffled array
#  

def shuffle_array (arr)
  shuf = []
  while arr.length > 0
    #  Randomly pick one element of the array
    rand_index = rand(arr.length)
    
    #  Now go through each item in the array
    #  putting them all into new_arr except for the
    #  randomly choosen one, which goes into shuff
    cur_index = 0
    new_arr = []

    arr.each do |item|
      if cur_index == rand_index
        shuf.push(item)
      else
        new_arr.push item
      end

      cur_index = cur_index + 1
    end
    #  Replace the original array with the new,
    #  smaller array.
    arr = new_arr
  end
  shuf
end

array = ['goat', 'apple', 'dog', 'cat', 'zebra', 'gorilla']
puts shuffle_array(array)
# Dir.chdir '~/Music'
# music files = Dir['**/*.{mp3,ogg}']

###  shuffle_array method that takes an array and returns a shuffled array
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

all_mp3 = shuffle_array(Dir['**/*.{mp3,ogg}'])

File.open 'playlist.m3u', 'w' do |f|
  all_mp3.each do |mp3|
    f.write mp3+"\n"
  end
end
puts 'Done!'

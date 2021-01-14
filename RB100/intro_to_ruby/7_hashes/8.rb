words =  ['demo', 'none', 'tied', 'evil', 'dome', 'mode', 'live',
          'fowl', 'veil', 'wolf', 'diet', 'vile', 'edit', 'tide',
          'flow', 'neon']

# print out groups of words that are anagrams
# print out seperate lines as arrays

# go through each index assign each word to alphabetical compare with 
# all other words.  next words
# make hash with key value pair of sorted words
# go through array and add all words from array and print out new array.
# permanently take out words from array
# go through hash compare word values make array

words_hash = {}
words_sorted = []

combined_arr = []

words_sorted = words.map { |word| word.split('').sort.join }

words.each_with_index do |word, index|
  words_hash[word] = words_sorted[index]
end

words_hash.each do |word, value|
  p combined_arr.push word
  if value
  end
end
p words_sorted
p words_hash


#book solution
result = {}

words.each do |word|
  key = word.split('').sort.join
  if result.has_key?(key)
    result[key].push(word)
  else
    result[key] = [word]
  end
end

result.each_value do |v|
  puts "------"
  p v
end



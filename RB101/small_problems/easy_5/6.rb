=begin
Letter Counter (Part 1)
Write a method that takes a string with one or more space separated words
and returns a hash that shows the number of words of different sizes.

Words consist of any string of characters that do not include a space.

Examples

word_sizes('Four score and seven.') == { 3 => 1, 4 => 1, 5 => 1, 6 => 1 }
word_sizes('Hey diddle diddle, the cat and the fiddle!') == { 3 => 5, 6 => 1, 7 => 2 }
word_sizes("What's up doc?") == { 6 => 1, 2 => 1, 4 => 1 }
word_sizes('') == {}

P
input: string (1+ spaced words)
output: hash(word size => number of occurences)
rules
explicit:
take a string with 1 or more words separated by space
return a hash
hash key is characters of words
hash value is occurence of that length word
implicit:
order hash from ascending key value (n/a) some examples don't follow this
symbols count as a character
questions:
Do we need to verify string value? not specified
mental model:
create a method that takes a string. Create a hash with each uniq word,
separated by 1 or more spaces, size (including symbols) as a key and
the occurances of that size word as the value.

E

word_sizes('Four score and seven.') == { 3 => 1, 4 => 1, 5 => 1, 6 => 1 }
word_sizes('Hey diddle diddle, the cat and the fiddle!') == { 3 => 5, 6 => 1, 7 => 2 }
word_sizes("What's up doc?") == { 6 => 1, 2 => 1, 4 => 1 }
word_sizes('') == {}

D
arrays and hashes

A

check the length of every word in the array
add to the hash the keys of unique sizes with the corresponding occurances
return the hash

create a method `word_sizes` that takes a string argument `string`
create an empty hash `word_size`
create an array of the string `words` separated by 1+ whitespace
loop through an array of `words`
  check the size of every word in `words`
  set `size' = word size
  check if word size `size` is a hash key
    increment the related value by 1 if true
    else append word size to hash as key and set to 1
return hash
=end

def word_sizes(string)
  words = string.split
  word_size = {}

  words.each do |word|
    size = word.size
    if word_size.include?(size)
      word_size[size] += 1
    else
      word_size[size] = 1
    end
  end

  word_size
end

p word_sizes('Four score and seven.') #== { 3 => 1, 4 => 1, 5 => 1, 6 => 1 }
p word_sizes('Hey diddle diddle, the cat and the fiddle!') #== { 3 => 5, 6 => 1, 7 => 2 }
p word_sizes("What's up doc?") #== { 6 => 1, 2 => 1, 4 => 1 }
p word_sizes('') #== {}
p word_sizes('Four score and seven.') == { 3 => 1, 4 => 1, 5 => 1, 6 => 1 }
p word_sizes('Hey diddle diddle, the cat and the fiddle!') == { 3 => 5, 6 => 1, 7 => 2 }
p word_sizes("What's up doc?") == { 6 => 1, 2 => 1, 4 => 1 }
p word_sizes('') == {}

#  Minor refactor
def word_sizes(string)
  word_size = {}

  string.split.each do |word|
    size = word.size
    if word_size.include?(size)
      word_size[size] += 1
    else
      word_size[size] = 1
    end
  end

  word_size
end

p word_sizes('Four score and seven.') #== { 3 => 1, 4 => 1, 5 => 1, 6 => 1 }
p word_sizes('Hey diddle diddle, the cat and the fiddle!') #== { 3 => 5, 6 => 1, 7 => 2 }
p word_sizes("What's up doc?") #== { 6 => 1, 2 => 1, 4 => 1 }
p word_sizes('') #== {}
p word_sizes('Four score and seven.') == { 3 => 1, 4 => 1, 5 => 1, 6 => 1 }
p word_sizes('Hey diddle diddle, the cat and the fiddle!') == { 3 => 5, 6 => 1, 7 => 2 }
p word_sizes("What's up doc?") == { 6 => 1, 2 => 1, 4 => 1 }
p word_sizes('') == {}

# Given solution
def word_sizes(words_string)
  counts = Hash.new(0)
  words_string.split.each do |word|
    counts[word.size] += 1
  end
  counts
end

p word_sizes('Four score and seven.') #== { 3 => 1, 4 => 1, 5 => 1, 6 => 1 }
p word_sizes('Hey diddle diddle, the cat and the fiddle!') #== { 3 => 5, 6 => 1, 7 => 2 }
p word_sizes("What's up doc?") #== { 6 => 1, 2 => 1, 4 => 1 }
p word_sizes('') #== {}
p word_sizes('Four score and seven.') == { 3 => 1, 4 => 1, 5 => 1, 6 => 1 }
p word_sizes('Hey diddle diddle, the cat and the fiddle!') == { 3 => 5, 6 => 1, 7 => 2 }
p word_sizes("What's up doc?") == { 6 => 1, 2 => 1, 4 => 1 }
p word_sizes('') == {}

#  Student solution
def word_sizes(string)
  string.split.map(&:size).tally
end

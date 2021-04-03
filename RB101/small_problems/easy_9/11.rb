=begin
Group Anagrams
Given the array...

words =  ['demo', 'none', 'tied', 'evil', 'dome', 'mode', 'live',
          'fowl', 'veil', 'wolf', 'diet', 'vile', 'edit', 'tide',
          'flow', 'neon']

Write a program that prints out groups of words that are anagrams.
Anagrams are words that have the same exact letters in them but in a
different order. Your output should look something like this:

["demo", "dome", "mode"]
["neon", "none"]
#(etc)

P
input: array (list of words)
output: print several arrays (arrays of strings that are anagrams)
rules
explicit:
print out groups fo words that are anagrams in arrays
anagrams are words that have the same exact letter but in different orders
group the words from the list into arrays of anagrams
implicit:
every word in the words array should be used, even if grouped by itself
question:
what is meant by words? all strings/elements within the words array
does the output have to be the same? should look something like the example

E
["demo", "dome", "mode"]
["neon", "none"]
#(etc)

D
array
string
hash

A
- iterate through every element in the words array
- store each element in an array with their anagrams
- print all the arrays created

- initialize a new hash
- iterate through every element in the words array
  - sort the element(string)
  - if sorted element is a key in the hash
    - append it to that hash value array
  - else
    - create a new hash key as sorted element and value as array with element
- print every hash value on its own line

- initialize a new array `anagrams`
- iterate through every element in words
  - sort the element alphabetically
  - if sorted element is included in the first element of `anagrams`
    - add it to the second sub-array element array
  - else
    - create a new sub-array element with sorted element and array
- print every second element array of each sub-array

=end

words =  ['demo', 'none', 'tied', 'evil', 'dome', 'mode', 'live',
          'fowl', 'veil', 'wolf', 'diet', 'vile', 'edit', 'tide',
          'flow', 'neon']
anagrams = {}

words.each do |word|
  sorted = word.chars.sort.join
  if anagrams.include?(sorted)
    anagrams[sorted] << word
  else
    anagrams[sorted] = [word]
  end
end

anagrams.each { |_, word_list| p word_list }

# ["demo", "dome", "mode"]
# ["neon", "none"]
# (etc)

words = ['demo', 'none', 'tied', 'evil', 'dome', 'mode', 'live',
         'fowl', 'veil', 'wolf', 'diet', 'vile', 'edit', 'tide',
         'flow', 'neon']
arr = []

words.each do |word|
  sorted = word.chars.sort.join
  if arr.any? { |k, _| k == sorted }
    arr.each do |key, list|
      if key == sorted
        list << word
      end
    end
  else
    arr << [sorted, [word]]
  end
end

arr.each { |_, lists| p lists }

# Refactored
words =  ['demo', 'none', 'tied', 'evil', 'dome', 'mode', 'live',
          'fowl', 'veil', 'wolf', 'diet', 'vile', 'edit', 'tide',
          'flow', 'neon', 'daflkjse']
result = []

words.each do |word|
  sorted = word.chars.sort.join
  if result.any? { |k, _| k == sorted }
    result.each { |key, list| list << word if key == sorted }
  else
    result << [sorted, [word]]
  end
end

result.each { |_, list| p list if list.size > 1 }

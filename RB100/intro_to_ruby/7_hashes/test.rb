require "pry"

# Given a hash of family members, with keys as the title and an array of
# names as the values, use Ruby's built-in select method to gather only
# immediate family members' names into a new array.

# family = { uncles: ["bob", "joe", "steve"],
#            sisters: ["jane", "jill", "beth"],
#            brothers: ["frank", "rob", "david"],
#            aunts: ["mary", "sally", "susan"]   
#          }


# names = family.select do |title, name|
#   title == :sisters || title == :brothers
# end

# p names = names.values.flatten
# p family


# immediate_family = []

# family.select do |title, name|        # .each_pair method works too
#   if title == :sisters || title == :brothers
#     immediate_family.push(family[title]).flatten!
#   end
# end

# p immediate_family
# p family

# 2. merge returns a new hash and merge! mutates the caller and returns
# the same hash modified

# h1 = {key: "value"}
# h2 = {symbol: "string"}

# p h1.merge(h2)
# p h1
# p h2

# p h1.merge!(h2)  # mutates the caller(h1) not the argument(h2)
# p h1
# p h2

# 3. Using some of Ruby's built-in Hash methods, write a program that
# loops through a hash and prints all of the keys. Then write a program
# that does the same thing except printing the values. Finally,
# write a program that prints both.

# family = {  uncles: ["bob", "joe", "steve"],
#             sisters: ["jane", "jill", "beth"],
#             brothers: ["frank","rob","david"],
#             aunts: ["mary","sally","susan"]
#           }

# family.each { |k, v| p k}      # can use .each_key

# family.each { |k, v| p v}      # can use .each_value

# family.each { |pair| p pair } # can use 2 parameters to reference individually

# 4. how would you access the name of the person in this expression?

# person = {name: 'Bob', occupation: 'web developer', hobbies: 'painting'}

# p person[:name]  # uses element reference

# 5. What method could you use to find out if a Hash contains a specific
# value in it? Write a program to demonstrate this use.

# person = {name: 'Bob', occupation: 'web developer', hobbies: 'painting'}

# p person.value?('Bob')
# p person.value?('Larry')

# def hash_checker(word, hash = {})
#   if hash.value?(word)
#     puts "Yes, the value #{word} is in the hash"
#   else
#     puts "No, the value #{word} is NOT in the hash"
#   end
# end

# hash_checker('Bob', person)

# x = "hi there"
# my_hash = {x: "some value"}
# my_hash2 = {x => "some value"}
# p x
# p my_hash2[x]
# p my_hash2.keys

# my_hash is using the symbol :x and setting its value to "some value"
# while the my_hash2 is using setting the variable value of x as the key
# with the value "some value" ("hi there" => "some value")

# 7. There is no keys method for an Array - undefined

# 8. Write a program that prints out groups of words that are anagrams.
# Anagrams are words that have the same exact letters in them but in a
# different order. Your output should look something like this:
["demo", "dome", "mode"]
["neon", "none"]
# (etc)

# print arrays on there own line.  each array contains all the anagrams
# from the words array
# mental model: sort each string with result tied to original string(hash)  
# Iterate through checking if words match any other words in array(anagrams)
# want to creat an array of 5 sub arrays or
# hash with key (sorted string) value an array
# array value uniq? make new array 
# array value exists? add to sub array 
# if match add new word to an array if word not already there.

# words =  ['demo', 'none', 'tied', 'evil', 'dome', 'mode', 'live',
#           'fowl', 'veil', 'wolf', 'diet', 'vile', 'edit', 'tide',
#           'flow', 'neon']

# hash = {}
# hash2 = {}
# words.each do |value|
#   hash[value] = value.split('').sort.join
# end

# hash.each do |key, value|
#   if array.include? value
    
#   else 
#     array.push(value)
#   end
# end

# p array
# p hash



words =  ['demo', 'none', 'tied', 'evil', 'dome', 'mode', 'live',
          'fowl', 'veil', 'wolf', 'diet', 'vile', 'edit', 'tide',
          'flow', 'neon']

hash = {}

words.each do |value|
  sorted_word = value.split('').sort.join 
  if hash.keys.include? sorted_word
    hash[sorted_word] = hash[sorted_word] << value 
  else
    hash[sorted_word] = [value]
  end
end

hash.each {|k, v| p v}

# p hash.values


# hash.each do |key, value|
#   if array.include? value
    
#   else 
#     array.push(value)
#   end
# end



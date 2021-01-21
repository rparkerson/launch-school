require "pry"

# 1. Use the each method of Array to iterate over 
# [1, 2, 3, 4, 5, 6, 7, 8, 9, 10], and print out each value.

# array = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]

# array.each { |i| puts i}

# array.each do |number|
#   puts number
# end

# 2. Same as above, but only print out values greater than 5.

# array = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]

# array.each { |i| puts i if i > 5 }

# array.each do |number|
#   if number > 5
#     puts number
#   end
# end

# 3. Now, using the same array from #2, use the select method
# to extract all odd numbers into a new array.

# array = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]

# odds = array.select { |i| i.odd? }
# p odds

# odds = array.select do |number|
#   number % 2 != 0
# end
# p odds

# 4. Append 11 to the end of the original array. 
# Prepend 0 to the beginning.

# array = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]

# array.push 11    # could also use << (shovel operator) or .append
# p array
# array.unshift 0  # could also use .prepend
# p array

# 5. Get rid of 11. And append a 3. 
# array = [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11]

# p array
# array.pop
# # or
# array.delete(11)
# p array
# array << 3 # or .push or .append
# p array

# 6. Get rid of duplicates without specifically removing any one value.
# array = [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 3]
# p array
# array.uniq!
# p array

# 7. What's the major difference between an Array and a Hash?
# They data structures store data differently.  Array stores in an 
# ordered list and hash uses key value pairs for referencing by key.

# 8. Create a Hash, with one key-value pair, using both Ruby syntax styles.
# hash = { key: "value" }
# hash2 = { :key => "value" }
# hash3 = Hash.new 
# hash3[:key] = "value"
# hash4 = Hash[key: "value"]

# p hash
# p hash2
# p hash3
# p hash4

# # 9. Suppose you have a hash: 
# h = {a:1, b:2, c:3, d:4}
# # 1. Get the value of key `:b`.
# p h[:b]
# # 2. Add to this hash the key:value pair `{e:5}`
# h[:e] = 5
# p h
# 3. Remove all key:value pairs whose value is less than 3.5
# h.delete_if { |k, v| v < 3.5 }
# p h
# h.delete_if do |key, value|
#   value < 3.5
# end
# p h
# h.select! { |k, v| v > 3.5 }
# p h

# 10. Can hash values be arrays? Can you have an array of hashes?
# (give examples)
# Yes hash values can be arrays:
# hash = {key: ["hash", "value", "as", ["array", "of", "arrays"]]}
# p hash
# array of hashes:
# array = [{key: "value"}, {hash: "es"}, {three_hashes: "one array"}]
# p array

# 11. Given the following data structures. Write a program that copies
# the information from the array into the empty hash that applies to the
# correct person.
# Reference each contact data element save that into empty hash(value)
# create new copy - non destructive

# contact_data = [["joe@email.com", "123 Main st.", "555-123-4567"],
#             ["sally@email.com", "404 Not Found Dr.", "123-234-3454"]]

# contacts = {"Joe Smith" => {}, "Sally Johnson" => {}}

# keys = [:email, :address, :phone]

# contacts["Joe Smith"][keys[0]] = contact_data[0][0]
# contacts["Joe Smith"][keys[1]] = contact_data[0][1]
# contacts["Joe Smith"][keys[2]] = contact_data[0][2]
# contacts["Sally Johnson"][keys[0]] = contact_data[1][0]
# contacts["Sally Johnson"][keys[1]] = contact_data[1][1]
# contacts["Sally Johnson"][keys[2]] = contact_data[1][2]

# p contacts

# 12. Using the hash you created from the previous exercise, demonstrate
# how you would access Joe's email and Sally's phone number?
# contacts =
# {"Joe Smith"=>{:email=>"joe@email.com", :address=>"123 Main st.", :phone=>"555-123-4567"},
# "Sally Johnson"=>{:email=>"sally@email.com", :address=>"404 Not Found Dr.", :phone=>"123-234-3454"}}

# p contacts["Joe Smith"][:email]
# p contacts["Sally Johnson"][:phone]

# 13. Use Ruby's Array method delete_if and String method start_with?
# to delete all of the words that begin with an "s" in the following array.

# arr = ['snow', 'winter', 'ice', 'slippery', 'salted roads', 'white trees']

# arr.delete_if { |word| word.start_with?("s") }
# p arr
# arr = ['snow', 'winter', 'ice', 'slippery', 'salted roads', 'white trees']

# arr.delete_if { |word| word.start_with?("s", "w") }
# p arr

# 14. Take the following array below and turn it into a new array that
# consists of strings containing one word.
# (ex. ["white snow", etc...] → ["white", "snow", etc...]. 
# Look into using Array's map and flatten methods, as well as String's 
# split method.
# turn into new array  map/flatten/split - can use

# a = ['white snow', 'winter wonderland', 'melting ice',
#      'slippery sidewalk', 'salted roads', 'white trees']

# one_word = a.map { |words| words.split(" ") }.flatten

# p one_word

# 15. What will the following program output?

# hash1 = {shoes: "nike", "hat" => "adidas", :hoodie => true}
# hash2 = {"hat" => "adidas", :shoes => "nike", hoodie: true}

# if hash1 == hash2
#   puts "These hashes are the same!"
# else 
#   puts "These hashes are NOT the same!"
# end

# 16. Challenge: In exercise 11, we manually set the contacts hash 
# values one by one. Now, programmatically loop or iterate over the
# contacts hash from exercise 11, and populate the associated data from
# the contact_data array. Hint: you will probably need to iterate over 
# ([:email, :address, :phone]), and some helpful methods might 
# be the Array shift and first methods.

# Note that this exercise is only concerned with dealing with 1 entry 
# in the contacts hash, like this:

contact_data = ["joe@email.com", "123 Main st.", "555-123-4567"]
contacts = {"Joe Smith" => {}}

# As a bonus, see if you can figure out how to make it work with 
# multiple entries in the contacts hash.

# iterate over contact hash. iterate over new array may help
# methods for Array shift and first may help
# mental mode iterate over contacts empty hash value and iterate over
# contact data use shift and iterate over keys use shift on each value

contact_data = [["joe@email.com", "123 Main st.", "555-123-4567"],
            ["sally@email.com", "404 Not Found Dr.", "123-234-3454"]]

contacts = {"Joe Smith" => {}, "Sally Johnson" => {}}

keys = [:email, :address, :phone]
x = -1
contacts.each do |key, hash|  #can use each_with_index 
  x += 1
  keys.each do |label|
    hash[label] = contact_data[x].shift
  end
end
p contacts


# alternative using loop

keys = [:email, :address, :phone, :email, :address, :phone]
loop do
  if contact_data[0] != []
    contacts["Joe Smith"][keys.shift] = contact_data[0].shift
  elsif
    contact_data[1] != []
    contacts["Sally Johnson"][keys.shift] = contact_data[1].shift
  else
    break
  end
end

p contacts

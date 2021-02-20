require 'pry'
=begin
PEDAC Template
==============
(Understand the) Problem
------------------------
-  Inputs: given array
-  Output: count of occurences in each array in element => count format
---
**Problem Domain:**
---
**Implicit Requirements:**
--- case sensitive 'suv' != 'SUV' 
print out 1 element/value per line
**Clarifying Questions:**
1. What should print if the array is empty? nothing?
2. Does this have to be printed with hash rockets => ?
3. Will the elements always be strings?
---
**Mental Model:**
go through the array and count each unique element and increment that count
if it occurs more than once.  Then output the unique next to its value 
--- 
Examples / Test Cases / Edge Cases
----------------------------------
**Examples:**
-  Example 1
  -  Inputs: 
  vehicles = [
  'car', 'car', 'truck', 'car', 'SUV', 'truck',
  'motorcycle', 'motorcycle', 'car', 'truck'
]
  -  Output:
  car => 4
truck => 3
SUV => 1
motorcycle => 2
-  Example 2
  -  Inputs:
  -  Output:
---
_Your Test Cases:_
-  Example 3
  -  Inputs: array = []
  -  Output: (nothing)
---
_Your Edge Cases:_
-  Example 4
  -  Inputs:
  -  Output:
---
Data Structure
hash
--------------
---
Algorithm
initiate an empty hash
iterate through the array check if element is in the hash
if is not in the hash add key with a default value of 1
if it is in the hash increment the hash value by 1
print key value pairs in hash with => (string interpolation)
---------
Code
----
=end

def count_occurrences(array)
  occurrences = {}
  array.each do |word|
    if occurrences.include?(word)
      occurrences[word] = occurrences[word] + 1
    else
      occurrences[word] = 1
    end
  end
  occurrences.each { |word, count| puts "#{word} => #{count}" }
end

vehicles = [
  'car', 'car', 'truck', 'car', 'SUV', 'truck',
  'motorcycle', 'motorcycle', 'car', 'truck'
]

count_occurrences(vehicles)

#  Further exploration (case insensitive)
def count_occurrences(array)
  occurrences = {}
  array.uniq.each do |word|
    word = word.downcase
    occurrences[word] = array.count { |ele| ele.casecmp?(word) }
  end
  occurrences.each { |word, count| puts "#{word} => #{count}" }
end

vehicles = [
  'caR', 'car', 'tRuCk', 'CaR', 'SUV', 'TRUCK',
  'MOTORcycle', 'motorcycle', 'CAR', 'truck'
]

count_occurrences(vehicles)

#  Further eploration
def count_occurrences(array)
  occurrences = {}
  array.each do |word|
    word = word.downcase
    if occurrences.include?(word)
      occurrences[word] = occurrences[word] + 1
    else
      occurrences[word] = 1
    end
  end
  occurrences.each { |word, count| puts "#{word} => #{count}" }
end

vehicles = [
  'car', 'car', 'truck', 'car', 'SUV', 'truck',
  'MOToRcycle', 'motorcycle', 'Car', 'truck'
]

count_occurrences(vehicles)

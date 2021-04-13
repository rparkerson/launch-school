=begin
Alphabetical Numbers
Write a method that takes an Array of Integers between 0 and 19, and returns
an Array of those Integers sorted based on the English words for each number:

zero, one, two, three, four, five, six, seven, eight, nine, ten, eleven,
twelve, thirteen, fourteen, fifteen, sixteen, seventeen, eighteen, nineteen

Examples:

alphabetic_number_sort((0..19).to_a) == [
  8, 18, 11, 15, 5, 4, 14, 9, 19, 1, 7, 17,
  6, 16, 10, 13, 3, 12, 2, 0
]

P
input: array (integers 0 - 19)
output: array (sorted integers based on english words for numbers)
rules
explicit:
create a method
takes integers 0 - 19 as argument
return a sorted array
array is sorted by engish words for numbers
implicit:
0 - 19 inclusively
words are sorted alphabetically
questions:
return new object array or same ? -unspecified
mental model:
take an array of integers and return an array of integers sorted by their
alphabetically arranged english names

E
alphabetic_number_sort((0..19).to_a) == [
  8, 18, 11, 15, 5, 4, 14, 9, 19, 1, 7, 17,
  6, 16, 10, 13, 3, 12, 2, 0
]

D
array and hash

A
represent each array element as an english name
sort the english names alphabetically
return the sorted array

create a method `alphabetic_number_sort` that takes an array argument
initialize a constant hash of english spellings of numbers as keys
  referenceing numbers
sort hash and return values

=end

NUMBERS_AS_WORDS = {
  'zero' => 0, 'one' => 1, 'two' => 2, 'three' => 3, 'four' => 4, 'five' => 5,
  'six' => 6, 'seven' => 7, 'eight' => 8, 'nine' => 9, 'ten' => 10,
  'eleven' => 11, 'twelve' => 12, 'thirteen' => 13, 'fourteen' => 14,
  'fifteen' => 15, 'sixteen' => 16, 'seventeen' => 17, 'eighteen' => 18,
  'nineteen' => 19
}
NUMBERS_AS_WORDS.sort.to_h.values

def alphabetic_number_sort(array)
  NUMBERS_AS_WORDS.sort.to_h.values
end

p alphabetic_number_sort((0..19).to_a)

ZERO_TO_NINETEEN = %w(zero one two three four five six seven eight nine ten
                      eleven twelve thirteen fourteen fifteen sixteen
                      seventeen eighteen nineteen)

def alphabetic_number_sort(array)
  ZERO_TO_NINETEEN.zip(array).sort.to_h.values
end

p alphabetic_number_sort((0..19).to_a)

#  Provided solution
NUMBER_WORDS = %w(zero one two three four
                  five six seven eight nine
                  ten eleven twelve thirteen fourteen
                  fifteen sixteen seventeen eighteen nineteen)

def alphabetic_number_sort(numbers)
  numbers.sort_by { |number| NUMBER_WORDS[number] }
end

p alphabetic_number_sort((0..19).to_a)

# Refactored based on feedback, did not work with other ranges (2..17) etc.
ZERO_TO_NINETEEN = %w(zero one two three four five six seven eight nine ten
                      eleven twelve thirteen fourteen fifteen sixteen
                      seventeen eighteen nineteen)

def alphabetic_number_sort(array)
  sorting_hash = ZERO_TO_NINETEEN.zip((0..19).to_a).to_h
  array.sort_by { |num| sorting_hash.key(num) }
end

p alphabetic_number_sort((2..17).to_a)

#  Further exploration
#  I think the Array#sort_by! method was not used because it mutates the
#  array.  You may want to use the original array again.

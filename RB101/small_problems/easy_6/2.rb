=begin
Write a method that takes an array of strings, and returns an array of the
same string values, except with the vowels (a, e, i, o, u) removed.

Example:

remove_vowels(%w(abcdefghijklmnopqrstuvwxyz)) == %w(bcdfghjklmnpqrstvwxyz)
remove_vowels(%w(green YELLOW black white)) == %w(grn YLLW blck wht)
remove_vowels(%w(ABC AEIOU XYZ)) == ['BC', '', 'XYZ']

P
input: array of strings
output: array (of strings with vowels removed)
rules
explicit:
return an array
remove the vowels (a, e, i, o, u)
implicit:
if the string contains only vowels return an empty string
remove capital vowels also and lower case
question:
mutate calling array? not specified

E
remove_vowels(%w(abcdefghijklmnopqrstuvwxyz)) == %w(bcdfghjklmnpqrstvwxyz)
remove_vowels(%w(green YELLOW black white)) == %w(grn YLLW blck wht)
remove_vowels(%w(ABC AEIOU XYZ)) == ['BC', '', 'XYZ']

D
arrays

A
- iterate over every string element in the array
  - iterate over every character in the string element
  - remove character if it is a vowel
- return array

iterate over the given array
  create a copy of the string (or create an empty string variable to append to)
  iterate over each copied string within array 
  if character is a, e, i, o, u delete char (append char to '' if not vowel)

=end

def remove_vowels(array)
  array.map do |word|
    word.delete('AEIOUaeiou')
  end
end

p remove_vowels(%w(abcdefghijklmnopqrstuvwxyz)) #== %w(bcdfghjklmnpqrstvwxyz)
p remove_vowels(%w(green YELLOW black white)) #== %w(grn YLLW blck wht)
p remove_vowels(%w(ABC AEIOU XYZ)) #== ['BC', '', 'XYZ']
arr = %w(ABC AEIOU XYZ)
p remove_vowels(arr) #== ['BC', '', 'XYZ']
p arr

def remove_vowels(array)
  no_vowels = []
  array.map do |word|
    no_vowels << word.gsub(/[aeiou]/i, '')
  end
  no_vowels
end

p remove_vowels(%w(abcdefghijklmnopqrstuvwxyz)) #== %w(bcdfghjklmnpqrstvwxyz)
p remove_vowels(%w(green YELLOW black white)) #== %w(grn YLLW blck wht)
p remove_vowels(%w(ABC AEIOU XYZ)) #== ['BC', '', 'XYZ']
arr = %w(ABC AEIOU XYZ)
p remove_vowels(arr) #== ['BC', '', 'XYZ']
p arr

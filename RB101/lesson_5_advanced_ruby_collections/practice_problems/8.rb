=begin
Practice Problem 8
Using the each method, write some code to output all of the vowels from the
strings.

hsh = {first: ['the', 'quick'], second: ['brown', 'fox'], third: ['jumped'],
       fourth: ['over', 'the', 'lazy', 'dog']}

P
input: hash
output: output string(all vowels from the strings)
rules
explicit:
check every string and print all the vowels
use each method
implicit:
vowels are aeiou
question:
How do we out the vowels?

E
string of vowels "euiooueoeeao"

D
hash

A
- isolate every string contained in the values arrays
- check if the string has a vowel (aeiou)
- output the vowels

initialize a empty string vowels
use each on the hsh
  iterate through each value (array)
    iterate through each word

=end

hsh = {first: ['the', 'quick'], second: ['brown', 'fox'], third: ['jumped'],
       fourth: ['over', 'the', 'lazy', 'dog']}
vowels = ''
hsh.each do |key, value|
  value.each do |word|
    vowels << word.delete('^aeiou')
  end
end
p vowels

hsh = {first: ['the', 'quick'], second: ['brown', 'fox'], third: ['jumped'],
       fourth: ['over', 'the', 'lazy', 'dog']}
vowels = ''
hsh.each do |key, value|
  value.each do |word|
    vowels << word.scan(/[aeiou]/).join
  end
end
p vowels

hsh = {first: ['the', 'quick'], second: ['brown', 'fox'], third: ['jumped'],
       fourth: ['over', 'the', 'lazy', 'dog']}
vowels = ''
hsh.each do |key, value|
  vowels << value.join
end
p vowels.delete('^aeiou')

hsh = {first: ['the', 'quick'], second: ['brown', 'fox'], third: ['jumped'],
       fourth: ['over', 'the', 'lazy', 'dog']}
hsh.each do |_, value|
  value.each do |word|
    word.chars.each do |char|
      p char if %w(a e i o u).include? char
    end
  end
end

# Given solution
vowels = 'aeiou'

hsh.each do |_, value|
  value.each do |str|
    str.chars.each do |char|
      puts char if vowels.include?(char)
    end
  end
end

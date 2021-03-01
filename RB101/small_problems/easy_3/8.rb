=begin
P
input: string
output: (return boolean)
rules:
case , punctuation and spaces matter (race car != rac ecar)
validate string - not specified - no
name method palindrome?
mental model:
create a method that takes 1 argument(string).  If string is a palindrome
return true else return false. All characters and case count.
E
palindrome?('madam') == true
palindrome?('Madam') == false          # (case matters)
palindrome?("madam i'm adam") == false # (all characters matter)
palindrome?('356653') == true
D
string
A
define a method called palindrome? that takes 1 argument(string)
  comparison if string is equal to string reversed
return that comparison boolean
=end

def palindrome?(string)
  string == string.reverse
end

p palindrome?('madam') == true
p palindrome?('Madam') == false          # (case matters)
p palindrome?("madam i'm adam") == false # (all characters matter)
p palindrome?('356653') == true

def palindrome?(string)
  arr = string.chars
  arr.reverse == arr
end

p palindrome?('madam') == true
p palindrome?('Madam') == false          # (case matters)
p palindrome?("madam i'm adam") == false # (all characters matter)
p palindrome?('356653') == true

=begin
Alternative 
D
Arrays
A
def method palindrome that has 1 parameter
initialize variable arr1 = split the string into an array over each character
initialize arr2 as an empty array
reverse the array
  iterate through each element in arr1 and add it to the front of arr2
compare arr2 to arr1 to original array 
return the boolean of the comparison
=end
def palindrome?(string)
  arr1 = string.chars
  arr2 = []
  arr1.each { |char| arr2.unshift(char) }
  arr2 == arr1
end

p palindrome?('madam') == true
p palindrome?('Madam') == false          # (case matters)
p palindrome?("madam i'm adam") == false # (all characters matter)
p palindrome?('356653') == true

#  Further Exploration (Check if an array/array or string is palindromic)
def palindrome?(sequence)
  sequence == sequence.reverse
end

p palindrome?('madam'.chars) # == true
p palindrome?('Madam'.chars) # == false          # (case matters)
p palindrome?("madam i'm adam".chars) # == false # (all characters matter)
p palindrome?('356653'.chars) # == true

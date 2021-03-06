=begin
Write a method that takes two strings as arguments, determines the
longest of the two strings, and then returns the result of concatenating
the shorter string, the longer string, and the shorter string once again.
You may assume that the strings are of different lengths.

P
input: two strings(differnt lengths)
output: return string (shorter, longer, shorter concatentated)
rules:
explicit requirements:
determine the longest of 2 strings
concatenate the strings shorter << longer << shorter
The strings are different lengths
implicit requirements:
empty strings return just the longer string
the longer string can be either argument
questions:
Do we need to validate the arguments as strings? - no mention so no

E
Examples:
short_long_short('abc', 'defgh') == "abcdefghabc"
short_long_short('abcde', 'fgh') == "fghabcdefgh"
short_long_short('', 'xyz') == "xyz"

D
strings
A
check which string is longer `string1` or `string2`
  long = longer of 2 strings
check which string is longer `string1` or `string2`
  short = shorter of 2 strings
return concatenation of short long short
=end

def short_long_short(string1, string2)
  long  = string1.size > string2.size ? string1 : string2
  short = string1.size > string2.size ? string2 : string1
  short + long + short
end

p short_long_short('abc', 'defgh') #== "abcdefghabc"
p short_long_short('abcde', 'fgh') #== "fghabcdefgh"
p short_long_short('', 'xyz') #== "xyz"

def short_long_short(str1, str2)
  str1.size > str2.size ? (str1 + str2 + str1) : (str2 + str1 + str2)
end

p short_long_short('abc', 'defgh') #== "abcdefghabc"
p short_long_short('abcde', 'fgh') #== "fghabcdefgh"
p short_long_short('', 'xyz') #== "xyz"

def short_long_short(string1, string2)
  if string1.size > string2.size
    long = string1
    short = string2
  else
    long = string2
    short = string1
  end
  short + long + short
end

p short_long_short('abc', 'defgh') #== "abcdefghabc"
p short_long_short('abcde', 'fgh') #== "fghabcdefgh"
p short_long_short('', 'xyz') #== "xyz"

# given solution
def short_long_short(string1, string2)
  if string1.length > string2.length
    string2 + string1 + string2
  else
    string1 + string2 + string1
  end
end

p short_long_short('abc', 'defgh') #== "abcdefghabc"
p short_long_short('abcde', 'fgh') #== "fghabcdefgh"
p short_long_short('', 'xyz') #== "xyz"

def short_long_short(str1, str2)
  short, long = [str1, str2].sort_by { |str| str.size }
  short + long + short
end

p short_long_short('abc', 'defgh') #== "abcdefghabc"
p short_long_short('abcde', 'fgh') #== "fghabcdefgh"
p short_long_short('', 'xyz') #== "xyz"

def short_long_short(str_a, str_b)
  short, long = [str_a, str_b].sort_by(&:size)
  short + long + short
end

p short_long_short('abc', 'defgh') #== "abcdefghabc"
p short_long_short('abcde', 'fgh') #== "fghabcdefgh"
p short_long_short('', 'xyz') #== "xyz"

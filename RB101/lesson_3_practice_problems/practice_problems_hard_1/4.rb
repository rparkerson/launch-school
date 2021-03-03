=begin
Ben was tasked to write a simple ruby method to determine if an input string
is an IP address representing dot-separated numbers. e.g. "10.4.5.11".
He is not familiar with regular expressions. Alyssa supplied Ben with a
method called is_an_ip_number? that determines if a string is a numeric
string between 0 and 255 as required for IP numbers and asked Ben to use it.

def dot_separated_ip_address?(input_string)
  dot_separated_words = input_string.split(".")
  while dot_separated_words.size > 0 do
    word = dot_separated_words.pop
    break unless is_an_ip_number?(word)
  end
  return true
end

Alyssa reviewed Ben's code and says "It's a good start, but you missed a
few things. You're not returning a false condition, and you're not handling
the case that there are more or fewer than 4 components to the IP address
(e.g. "4.5.5" or "1.2.3.4.5" should be invalid)."

Help Ben fix his code.
P
input: string
output: boolean
rules:
string is separated by . for each numeric
each numeric is between 0 and 255 inclusively
there are exactly 4 numerics
mental model:
given a string of numbers seperated by "." check if string is a valid ip
address return true, else return false.  A valid ip address has 4 numerics
0 through 255 and split by '.'
E
dot_separated_ip_address?("10.4.5.11") == true
dot_separated_ip_address?("4.5.5") == false
dot_separated_ip_address?("1.2.3.4.5") == false
D
arrays
A
def a method that takes an input_string as an argument
initialize result variable and set to true
dot_separated_words array = input_string split by each "." as an element
result = false if dot_separated_words array is not 4 elements
while dot_separated_words is > 0 perform a loop
  word = the last word in dot_separated_words removed from the array
  result = false unless word is a valid number range
return result
=end

def is_an_ip_number?(string)
string.to_i.between?(0, 255)
end

def dot_separated_ip_address?(input_string)
  result = true
  dot_separated_words = input_string.split(".")
  result = false unless dot_separated_words.size == 4

  while dot_separated_words.size > 0
    word = dot_separated_words.pop
    result = false unless is_an_ip_number?(word)
  end

  result
end

p dot_separated_ip_address?("10.4.5.11")
p dot_separated_ip_address?("10.4.5.256") 
p dot_separated_ip_address?("4.5.5") 
p dot_separated_ip_address?("1.2.3.4.5")

def is_an_ip_number?(string)
  string.to_i.between?(0, 255)
end

def dot_separated_ip_address?(input_string)
  dot_separated_words = input_string.split(".")
  return false unless dot_separated_words.size == 4

  while dot_separated_words.size > 0 do
    word = dot_separated_words.pop
    return false unless is_an_ip_number?(word)
  end

  true
end

p dot_separated_ip_address?("10.4.5.11")
p dot_separated_ip_address?("10.4.5.256") 
p dot_separated_ip_address?("4.5.5") 
p dot_separated_ip_address?("1.2.3.4.5")

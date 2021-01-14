=begin
Write a method that takes a string as argument. The method should return 
a new, all-caps version of the string, only if the string is longer than
10 characters. Example: change "hello world" to "HELLO WORLD". 
(Hint: Ruby's String class has a few methods that would be 
helpful. Check the Ruby Docs!)
input = string
output = all-caps version of the string
only if string is longer than 10 characters
method 1 argument string
=end

def all_caps(string)
  if string.length > 10
    string.upcase
  else
    string
  end
end

def caps(string)
  string.length > 10 ? string.upcase : string
end

p all_caps("Hello World!")
p all_caps("no caps")

p caps("Hello World!")
p caps("no caps")
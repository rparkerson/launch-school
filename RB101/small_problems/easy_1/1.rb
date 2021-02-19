#  input: a string and positive integer
#  output: print the string as many times as the integer indicates
#  The output should be on a new line every time
#  The arguments should be exactly 1 string and 1 integer every time
#  mental model: output string integer times
#  E - repeat('Hello', 1)  # => Hello
#  D - Will use sting and integer 
#  A - print string once for every integer

def repeat(string, integer)
  integer.times { puts string }
end

repeat('Hello', 3)

def repeat(string, integer)
  puts("#{string}\n" * integer)
end

repeat('Hello', 3)

def repeat(string, number)
  1.upto(number) { puts string }
end

repeat('Hello', 3)
repeat('Hello', 1)

def repeat(string, integer)
  (1..integer).each { puts string }
end

repeat('Hello', 3)
repeat('Hello', 1)

# What will the following code print? Why?
# Don't run it until you've attempted to answer.

def count_sheep
  5.times do |sheep|
    puts sheep
  end
  10
end

puts count_sheep

# this will invoke the count_sheep method which outputs the numbers
# 0 - 4 with the times method call on the integer 5.  The last line executed
# within the method is the integer 10 and that is the implicitly
# return the value of the count_sheep
# method that will be output by puts.  so this will output:
# 0 1 2 3 4 10 (each on their own line)
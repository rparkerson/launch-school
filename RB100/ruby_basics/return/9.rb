# What will the following code print? Why? 
# Don't run it until you've attempted to answer.

def count_sheep
  5.times do |sheep|
    puts sheep
    if sheep >= 2
      return
    end
  end
end

p count_sheep

# this prints 0 1 2 nil
# this invokes the count_sheep method which invokes the times method on
# the integer 5 and returns after the block argument being passed is equal
# to 2. so this prints 0 1 2 from the times method in the block then
# the return value of the line return was invoked which is blank
# or nil is printed using(return did not provide a value)
# p outside the method, which prints nil.
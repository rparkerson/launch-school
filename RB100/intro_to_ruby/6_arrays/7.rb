# Use the each_with_index method to iterate through an array of your
# creation that prints each index and value of the array

array = ["string", 3, 2.34, ["a", "b"]]

array.each_with_index { |value, index| puts "#{index} : #{value}" }
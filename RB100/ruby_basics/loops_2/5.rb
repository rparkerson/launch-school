# Modify the code below so that the user's input gets added to the 
# numbers array. Stop the loop when the array contains 5 numbers./

numbers = []

loop do
  puts 'Enter any number:'
  input = gets.chomp.to_i
  numbers.push(input)
  break if numbers.size == 5
end
puts numbers



numbers = []

loop do
  puts 'Enter any number:'   # collects a 6th number that isn't saved
  input = gets.chomp.to_i
  if numbers.size < 5
    numbers << input
  else
    break
  end
end
puts numbers
p numbers
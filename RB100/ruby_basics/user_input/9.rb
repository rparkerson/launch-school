loop do
  puts '>> How many output lines do you want? Enter a number >= 3: (q to quit)'
  input = gets.chomp.downcase
  break if input == 'q'
  if input.to_i >= 3
    input.to_i.times {puts "Launch School is the best!"}
  else
    puts ">> That's not enough lines."
  end
end

# example
loop do
  input_string = nil
  number_of_lines = nil

  loop do
    puts '>> How many output lines do you want? ' \
         'Enter a number >= 3 (Q to Quit):'

    input_string = gets.chomp.downcase
    break if input_string == 'q'

    number_of_lines = input_string.to_i
    break if number_of_lines >= 3

    puts ">> That's not enough lines."
  end

  break if input_string == 'q'

  while number_of_lines > 0
    puts 'Launch School is the best!'
    number_of_lines -= 1
  end
end

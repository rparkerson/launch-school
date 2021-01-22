loop do
  puts 'Should I stop looping?'
  answer = gets.chomp
  break if answer == 'yes'
end

loop do
  puts 'Should I stop looping?'
  print "> "
  answer = gets.chomp.downcase
  break if answer.include? 'yes'
  puts 'Incorrect answer. Please answer "yes".'
end

loop do
  puts 'Should I stop looping?'
  answer = gets.chomp
  break if answer == 'yes'
  puts 'Incorrect answer. Please answer "yes".'
end


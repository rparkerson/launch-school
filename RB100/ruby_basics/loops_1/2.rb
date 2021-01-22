loop do
  puts 'This is an outer loop.'

  loop do
    puts 'This is an inner loop.'
    break
  end
  
  break
end

puts 'This is outside all loops.'
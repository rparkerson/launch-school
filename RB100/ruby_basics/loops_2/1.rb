# Write a loop that prints numbers 1-5 and whether the number is 
# even or odd. Use the code below to get started.

(1..5).each do |number|
  if number.odd?
    puts "#{number} is odd!"
  else
    puts "#{number} is even!"
  end
end

count = 1

loop do
  if count.odd?
    puts "#{count} is odd!"
  else
    puts "#{count} is even!"
  end

  break if count == 5
  count += 1
end

count = 1

loop do
  if count % 2 == 0
    puts "#{count} is even!"
  else
    puts "#{count} is odd!"
  end

  break if count == 5
  count += 1
end

count = 1

loop do
  count.odd? ? puts("#{count} is odd!") : puts("#{count} is even!")
  
  count += 1
  break if count > 5
end

count = 1

loop do
  count.odd? ? (puts"#{count} is odd!") : (puts "#{count} is even!")
  
  count += 1
  break if count > 5
end

count = 1

loop do
  puts count.odd? ? "#{count} is odd!" : "#{count} is even!"
  
  count += 1
  break if count > 5
end

count = 0

loop do
  puts (count += 1).odd? ? "#{count} is odd!" : "#{count} is even!"
  break if count == 5
end

number = 0000
puts "Thousands place: #{number / 1000}"
puts "Hundreds place: #{number % 1000 / 100}"
puts "Tens place: #{number % 100 / 10}"
puts "Ones place: #{number % 10}"


# book solution
thousands = 4936 / 1000
hundreds = 4936 % 1000 / 100
tens = 4936 % 1000 % 100 / 10
ones = 4936 % 1000 % 100 % 10
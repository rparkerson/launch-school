# prompt and take two inputs as years - start and end
# output all leap years between them (inclusively)
# leap years - divisable by 4,
# NOT divisible by 100 (1800, 1900)
# NOT divisible by 400 (1600, 2000)

# loop through the years and checking if negative request positve
# if divible by 4 and not divilbe by 100 or 400
# have a counter break after last input evaluated

puts 'We will calculate all leap years in a range'
puts 'What is the starting year?'
start_year = gets.to_i
puts 'What is the ending year?'
end_year = gets.to_i

while true
  if start_year % 4 == 0
    if start_year % 100 != 0
      if start_year % 400 != 0
        puts start_year.to_s
      end
    end
  end
  if start_year == end_year
    break
  end
  start_year = start_year + 1
end

arr = [1, 3, 5, 7, 9, 11]
number = 3

if arr.include?(number) then puts "This array contains #{number}" end

if arr.select { |i| i == number } then puts "#{number} found" end

arr.each { |i| i == number ? puts("This contains #{number}") : "Nothing" }
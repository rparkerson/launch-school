iterations = 1

loop do
  puts "Number of iterations = #{iterations}"
  iterations += 1
  break if iterations > 5
end

loop do
  puts "Number of iterations = #{iterations}"
  break if iterations > 4
  iterations += 1
end

loop do
  puts "Number of iterations = #{iterations}"
  iterations += 1
  break if iterations == 6
end

loop do
  5.times {puts "Number of iterations = #{iterations}"; iterations += 1}
  break
end

iterations = 0

loop do
  5.times{puts "Number of iterations = #{iterations += 1}"}
  break
end
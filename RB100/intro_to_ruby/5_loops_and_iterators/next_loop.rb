# next_loop.rb

i = 0
loop do
  i += 2
  if i == 4
    next        # skip rest fo the code in this iteration
  end
  puts i
  if i == 10
    break
  end
end

puts "i equals #{i}"
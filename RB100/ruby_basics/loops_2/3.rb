# Using an if/else statement, run a loop that prints 
# "The loop was processed!" one time if process_the_loop equals true.
# Print "The loop wasn't processed!" if process_the_loop equals false.

process_the_loop = [true, false].sample

loop do
  if process_the_loop == true    # can be refactored without == true
    puts "The loop was processed!"
  else
    puts "The loop wasn't processed!"
  end

  break
end


loop do
  if process_the_loop
    puts "The loop was processed!"
  else
    puts "The loop wasn't processed!"
  end

  break
end



if process_the_loop == true   # can be refactored without == true
  loop do
    puts "The loop was processed!"
    break
  end
else
  puts "The loop wasn't processed!"
end


if process_the_loop
  loop do
    puts "The loop was processed!"
    break
  end
else
  puts "The loop wasn't processed!"
end
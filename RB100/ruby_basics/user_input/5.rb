# Write a program that prints 'Launch School is the best!' repeatedly 
# until a certain number of lines have been printed. The program should 
# obtain the number of lines from the user, and should insist that at 
# least 3 lines are printed.

# For now, just use #to_i to convert the input value to an Integer, and 
# check that result instead of trying to insist on a valid number; 
# validation of numeric input is a topic with a fair number of edge 
# conditions that are beyond the scope of this exercise.

loop do
  puts ">> How many output lines do you want? Enter a number >= 3: "
  lines = gets.to_i           # to_i removes newline character incedently
  
  if lines >= 3
    lines.times { puts "Launch School is the best!" }
    break
  else
    puts "That's not enough lines."
  end
end

lines = nil
loop do
  puts ">> How many output lines do you want? Enter a number >= 3: "
  lines = gets.to_i
  break if lines >= 3
  puts "That's not enough lines."
end
lines.times { puts "Launch School is the best!" }


loop do
  puts ">> How many output lines do you want? Enter a number >= 3: "
  lines = gets.to_i
  lines.times { puts "Launch School is the best!" } if lines >= 3
  break if lines >= 3
  puts "That's not enough lines."
end

loop do
  puts ">> How many output lines do you want? Enter a number >= 3: "
  lines = gets.to_i
  if lines >= 3                             # refactored for readability
    lines.times { puts "Launch School is the best!" }
  end
  break if lines >= 3
  puts "That's not enough lines."
end

loop do    
  print "How many times would you like to print? :" 
  pr_times = gets.chomp.to_i
  if pr_times < 3          
    puts "That's not enough lines - try 3 or more!"
    next
  end 
  loop do
    puts "Launch School is awesome!"
    pr_times -= 1
    break if pr_times < 1
  end 
  break
end 
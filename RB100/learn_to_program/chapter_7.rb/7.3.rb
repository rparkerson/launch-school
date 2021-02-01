input = ''
while input != 'bye'
  # puts input
  input = gets.chomp
  puts input
end
puts 'Come again soon!'

# THIS IS NOT A REAL PROGRAM!
# while just_like_go_forever
#   input = get.chomp
#   puts input
#   if input == 'bye'
#     stop_looping
#   end
# end

# puts 'Come again soon!'

# THIS IS TOTALLY A REAL PROGRAM!
while 'Spike' > 'Angel'
  input = gets.chomp
  puts input
  if input == 'bye'
    break
  end
end

puts 'Come again soon!'

while true
  input = gets.chomp
  puts input
  if input == 'bye'
    break
  end
end

puts 'Come again soon!'

puts 'Hello, what\'s your name?'
name = gets.chomp
puts 'Hello, ' + name + '.'

if name == 'Chris'
  puts 'What a lovely name!'
else
  if name == 'Katy'
    puts 'What a lovely name!'
  end
end

puts 'Hello, what\'s your name?'
name = gets.chomp
puts 'Hello, ' + name + '.'

if name == 'Chris'
  puts 'What a lovely name!'
elsif name == 'Katy'
  puts 'What a lovely name!'
end

puts 'Hello, what\'s your name?'
name = gets.chomp
puts 'Hello, ' + name + '.'

if name == 'Chris' || name == 'Katy'
  puts 'What a lovely name!'
end

# this is name == true, which every string evaluates to
if name == ('Chris' || 'Katy')
  puts 'What a lovely name!'
end

i_am_chris = true
i_am_purple = false
i_like_beer = true
i_eat_rocks = false

puts i_am_chris && i_like_beer
puts i_like_beer && i_eat_rocks
puts i_am_purple && i_like_beer
puts i_am_purple && i_eat_rocks
puts
puts i_am_chris || i_like_beer
puts i_like_beer || i_eat_rocks
puts i_am_purple || i_like_beer
puts i_am_purple || i_eat_rocks
puts
puts !i_am_purple
puts !i_am_chris

while true
  puts 'What would you like to ask C to do?'
  request = gets.chomp

  puts 'You say, "C, please ' + request + '"'

  puts 'C\'s response:'
  puts '"C ' + request + '."'
  puts '"Papa ' + request + '."'
  puts '"Mama ' + request + '."'
  puts '"Ruby ' + request + '."'
  puts '"Nono ' + request + '."'
  puts '"Emma ' + request + '."'
  puts

  if request == 'stop'
    break
  end
end

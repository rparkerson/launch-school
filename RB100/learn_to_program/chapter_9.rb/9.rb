puts 'Hello, and thank you for taking the time to'
puts 'help me with this experiment.  My experiment'
puts 'has to do with the way people feel about'
puts 'Mexican food.  Just think about Mexican food'
puts 'and try to answer every question honestly,'
puts 'with either a "yes" or a "no".  My experiment' 
puts 'has nothing to do with bed-wetting.'
puts
# We ask these questions, but ignore their answers.
while true
  puts 'Do you like eating tacos?'
  answer = gets.chomp.downcase
  if (answer == 'yes' || answer == 'no')
    break
  else
    puts 'Please answer "yes" or "no".'
  end
end

while true
  puts 'Do you like eating burritos?'
  answer = gets.chomp.downcase
  if (answer == 'yes' || answer == 'no')
    break
  else
    puts 'Please answer "yes" or "no".'
  end
end

# We pay attention to *this* answer, though.
while true
  puts 'Do you wet the bed?'
  answer = gets.chomp.downcase
  if (answer == 'yes' || answer == 'no')
    if answer == 'yes'
      wets_bed = true
    else
      wets_bed = false
    end
    break
  else
    puts 'Please answer "yes" or "no".'
  end
end

while true
  puts 'Do you like eating chimichangas?'
  answer = gets.chomp.downcase
  if (answer == 'yes' || answer == 'no')
    break
  else
    puts 'Please answer "yes" or "no".'
  end
end

puts 'Just a few more questions...'

while true
  puts 'Do you like eating sopipillas?'
  answer = gets.chomp.downcase
  if (answer == 'yes' || answer == 'no')
    break
  else
    puts 'Please answer "yes" or "no".'
  end
end

# Ask lots of other questions about Mexican food.

puts 
puts 'DEBRIEFING:'
puts 'Thank you for taking the time to help with'
puts 'this experiment.  In fact, this experiment'
puts 'has nothing to do with Mexican food.  It is'
puts 'an experiment about bed-wetting.  The Mexican'
puts 'food was there to catch you off guard'
puts 'in the hopes that you would answer more'
puts 'honestly.  Thanks again.'
puts
puts wets_bed

def say_moo
  puts 'mooooooo...'
end

say_moo
say_moo
puts 'coin-coin'
say_moo
say_moo

def say_moo number_of_moos
  puts 'mooooooo...'*number_of_moos
end

say_moo 3
puts 'oink-oink'

#  This last line should give an error
#  because the parameter is missing...
# say_moo

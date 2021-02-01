# while true
#   puts 'What do you want to say to your dear old grandma?'
#   answer = gets.chomp
#   shout = answer.upcase
#   year = (rand(21) + 1930).to_s

#   if answer != shout
#     puts 'HUH?! SPEAK UP, SONNY!'
#   elsif answer == shout && answer != 'BYE'
#     puts 'NO, NOT SINCE ' + year + '!'
#   elsif answer == 'BYE'
#     puts 'GOODBYE SOONY!'
#     break
#   end
# end

# extended version
while true
  puts 'What do you want to say to your dear old grandma?'
  answer = gets.chomp
  shout = answer.upcase
  year = (rand(21) + 1930).to_s

  if answer != shout
    puts 'HUH?! SPEAK UP, SONNY!'
  elsif answer == shout && answer != 'BYE'
    puts 'NO, NOT SINCE ' + year + '!'
  elsif answer == 'BYE'
    puts 'WHAT LOVELY WEATHER!'
    answer = gets.chomp
    if answer == 'BYE'
      puts 'I LOVE BINGO!'
      answer = gets.chomp
      if answer == 'BYE'
        puts 'GOODBYE SOONY!'
        break
      end
    end
  end
end

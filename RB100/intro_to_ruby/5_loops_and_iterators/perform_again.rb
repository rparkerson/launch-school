# perform_again.rb

loop do
  puts "Do you want to do that again?"
    answer = gets.chomp
    if answer != 'Y'
      break
    end
end

# this works but is not recommended by Matz, the creator of Ruby
begin
  puts "Do you want to do that again?"
  answer = gets.chomp
end while answer == 'Y'
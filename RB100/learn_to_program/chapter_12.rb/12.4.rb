#  This is your range literal.
letters = 'a'..'c'

#  Convert range to array.
puts(['a','b','c'] == letters.to_a)   #  => true

#  Iterate over a range
('A'..'Z').each do |letter|
  print letter
end
puts

god_bless_the_70s = 1970..1979
puts god_bless_the_70s.min
puts god_bless_the_70s.max
puts(god_bless_the_70s.include?(1979  ))
puts(god_bless_the_70s.include?(1980  ))
puts(god_bless_the_70s.include?(1974.5))

da_man = 'Mr. T'
big_T  = da_man[4]
puts big_T

puts "Hello.  My name is Julian."
puts "I'm extremely perceptive."
puts "What's your name?"

name = gets.chomp
puts "Hi, #{name}."

if name[0] == 'C'
  puts 'You have excellent taste in footwear.'
  puts 'I can just tell.'
end

prof = 'We tore the universe a new space-hole, alright!'
puts prof[12,  8]
puts prof[12..19]  #  8 characters total
puts
def is_avi? filename
  filename.downcase[-4..-1] == '.avi'  #  Checks the last 4 characters
end
#  Vicarious embarraassment.
puts is_avi?('DANCEMONKEYBOY.AVI')
#  Hey, I wasn't even 2 at the time...
puts is_avi?('toilet_paper_fiasco.jpg')

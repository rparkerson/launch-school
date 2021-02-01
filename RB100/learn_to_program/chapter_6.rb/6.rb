puts('hello '.+ 'world')
puts((10.* 9).+ 9)

puts self
puts

var1 = 'stop'
var2 = 'deliver repaid desserts'
var3 = '....TCELES B HSUP  A magic spell?'

puts var1.reverse
puts var2.reverse
puts var3.reverse
puts var1
puts var2
puts var3

puts 'What is your full name?'
name = gets.chomp
puts 'Did you know there are ' + name.length.to_s + ' characters'
puts 'in your name, ' + name + '?'
puts 
puts 'What is your first name?'
f_name = gets.chomp
puts 'What is your middle name?'
m_name = gets.chomp
puts 'What is your last name?'
l_name = gets.chomp
name_size = f_name.length + m_name.size + l_name.size
puts "Did you know there are #{name_size} characters"
puts "in your name #{f_name} #{m_name} #{l_name}?"

letters = 'aAbBcCdDeE'
puts letters.upcase
puts letters.downcase
puts letters.swapcase
puts letters.capitalize
puts ' a'.capitalize
puts letters
puts 

line_width = 50
puts(                'Old Mother Hubbard'.center(line_width))
puts(               'Sat in her cupboard'.center(line_width))
puts(         'Eating her curds and whey'.center(line_width))
puts(          'When along came a spider'.center(line_width))
puts(          'who sat down besider her'.center(line_width))
puts('And scared her poor shoe dog away.'.center(line_width))

puts

line_width = 40
str = '--> text <--'
puts(str.ljust( line_width))
puts(str.center(line_width))
puts(str.rjust( line_width))
puts(str.ljust(line_width/2) + str.rjust(line_width/2))

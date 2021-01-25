# Write a program that asks the user to type something in, after 
# which your program should simply display what was entered.

puts ">> Type anything you want:"
input = gets.chomp
puts input

# student example using method definitions
def echo(str)
  puts str
end

def listen
  return gets
end


puts "type any string"
echo(listen)
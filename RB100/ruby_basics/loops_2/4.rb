=begin
The code below asks the user "What does 2 + 2 equal?" and uses #gets
to retrieve the user's answer. Modify the code so "That's correct!"
is printed and the loop stops when the user's answer equals 4. Print
"Wrong answer. Try again!" if the user's answer doesn't equal 4.

P
input: string(answer from user)
output: string(correct or wrong try again)
rules
explicit:
modify code given the code
print "That's correct" if answer == 4
print "Wrong answer. Try again!" and loop again
implicit:
break if answer is 4

E
4 => "That's correct!"
Anything else => "wrong answer. Try again!"

D
string

A
create loop
  prompt user for answer
  'answer' variable = user response to integer
  check if 'answer' == 4
    print correct message prompt 
    break out of the loop
  else
    print incorrect message prompt (loop again)

=end

# The code below asks the user "What does 2 + 2 equal?" and uses #gets 
# to retrieve the user's answer. Modify the code so "That's correct!"
# is printed and the loop stops when the user's answer equals 
# 4. Print "Wrong answer. Try again!" if the user's answer doesn't 
# equal 4.

loop do
  puts "What does 2 + 2 equal?"
  answer = gets.chomp.to_i
  if answer != 4
    puts "Wrong answer. Try again!"
  else
    puts "That's correct!"
    break
  end
end


loop do
  puts 'What does 2 + 2 equal?'
  answer = gets.chomp.to_i

  if answer == 4
    puts "That's correct!"
    break
  end

  puts 'Wrong answer. Try again!'
end


loop do
  puts 'What does 2 + 2 equal?'
  answer = gets.chomp
  puts answer == '4' ? "That's Correct!" : "Wrong Answer. Try again!"
  break if answer == '4'
end

# building and sorting an array
# prompt input type as many words as we want
# (one word per line, continuing until we press enter on an
# empty line)
# then repeats the words back to us in alphabetical order
# mental model
# loop through and collect the words until nil then sort words and output 
# the words back aplabetically

puts 'Type as many words as you want and press enter on an empty line to end.'
words = []
word = 0

while true
  word = gets.chomp
  if word != ""
    words.push(word)
  else
    break
  end
end

puts words.sort

# alternative
puts 'Type as many words as you want and press enter on an empty line to end.'
words = []
word = 0

while word != ""
  word = gets.chomp
  if word != ""
    words.push(word)
  end
end

puts words.sort

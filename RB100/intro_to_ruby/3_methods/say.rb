puts "hello"
puts "hi"
puts "how are you"
puts "I'm fine"

def say(words='hello')
  puts words + '.'
end

say()
say("hi")
say("how are you")
say("I'm fine")
say "No parentheses, no problem!  
(RIP readability of method vs local variable)"
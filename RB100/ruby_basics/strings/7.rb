# Given the following code, invoke a destructive method on greeting 
# so that Goodbye! is printed instead of Hello!.

# greeting = 'Hello!'
# puts greeting

# Expected output:

# Goodbye!

greeting = 'Hello!'
greeting.clear
greeting = 'Goodbye!'
puts greeting

greeting = 'Hello!'
greeting.sub!('Hello!', 'Goodbye!')
puts greeting

greeting = 'Hello!'
greeting.gsub!('Hello', 'Goodbye')
puts greeting

greeting = 'Hello!'
greeting.replace('Goodbye!')
puts greeting

greeting = 'Hello!'
puts greeting.chop!.chop!.chop!.chop!.chop!.chop!<<"Goodbye!"
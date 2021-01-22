say_hello = true
i = 0

while say_hello
  puts 'Hello!'
  i += 1
  break if i > 4
end


say_hello = true
i = 0

while say_hello
  puts 'Hello!'
  i += 1
  say_hello = false if i > 4
end


say_hello = true
i = 0

while say_hello
  puts 'Hello!'
  i += 1
  if i > 4 then say_hello = false end
end

say_hello = 1

while say_hello <= 5
  puts 'Hello!'
  say_hello += 1
end
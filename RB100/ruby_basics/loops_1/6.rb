numbers = []

while numbers.count < 5
  numbers.push(rand 100)
end

puts numbers



numbers = []
5.times {numbers.push(rand 100)}
while numbers.count > 0
  p numbers.pop
end



5.times {p rand 100}



numbers = []

while numbers.count < 5
 p numbers.unshift(rand 100).first
end



numbers = (0..99).to_a.shuffle

while numbers.size > 95
  p numbers.pop
end

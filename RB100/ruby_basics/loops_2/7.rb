=begin
The method below counts from 0 to 4. Modify the block so that it prints
the current number and stops iterating when the current number equals 2.

5.times do |index|
  # ...
end

P
input:
output: print integer(0, 1, 2)
rules
explicit:
modify the given block
print the current number
stop when current number equals 2
implicit:
2 is printed.

E
0
1
2

D
itegers

A
given a method invocation which iterates through the block
  print the current number 'index'
  break out of the loop when 'index' equals 2
=end

# The method below counts from 0 to 4. Modify the block so that it prints
# the current number and stops iterating when the current number equals 2.

5.times do |index|
  p index
  break if index == 2
end

5.times { |index| p index; break if index == 2}

5.times do |index| 
  p index
  if index == 2
    break
  end
end 

5.times { |index| index == 2 ? (puts(index); break) : puts(index) }

5.times do |index|
  index == 2 ? (puts index; break) : (puts index)
end

5.times { |index| break if (p index) == 2}

5.times { |index| index == 2 ? (break puts index) : (puts index) }

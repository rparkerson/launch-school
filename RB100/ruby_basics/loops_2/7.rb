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
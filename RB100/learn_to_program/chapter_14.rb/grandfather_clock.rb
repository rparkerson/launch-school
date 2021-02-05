#  takes a block and calls it once each hour that has passed today.
#  loop through indefinatly take the current time to hour convert to
#  AM / PM reset at 1PM/AM back to 1
def grandfather_clock &block
  time = Time.new.hour
  if time == 0
    time = 12
  elsif time > 12
    time = time - 12
  end

  time.times do
    block.call
  end

  #  Work in progress for output once every hour while code running
  # while true
  #   if (Time.new.hour - time) == 1
  #     block.call
  #     puts "It is #{time}o'clock!"
  #     if time == 12
  #       time = 1
  #     else 
  #       time = time + 1
  #     end
  #   end
  # end
end

chime = Proc.new do
  puts 'DONG!'
end

grandfather_clock do 
  puts 'DONG!'
end

# # book solution
def grandfather_clock &block
  hour = Time.new.hour

  if hour >= 13
    hour = hour - 12
  end

  if hour == 0
    hour = 12
  end

  hour.times do
    block.call
  end
end

grandfather_clock do
  puts 'DONG!'
end

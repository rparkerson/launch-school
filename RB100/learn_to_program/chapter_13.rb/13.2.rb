class Die

  def roll
    1 + rand(6)
  end

end

#  Let's make a couple of dice...
dice = [Die.new, Die.new]

#  ...and roll them.
dice.each do |die|
  puts die.roll
end

#  Updated with instance variable
class Die

  def roll
    @showing_number = 1 + rand(6)
  end

  def showing
    @showing_number
  end

end

die = Die.new
die.roll
puts die.showing
puts die.showing
die.roll
puts die.showing
puts die.showing

class Die

  def roll
    @showing_number = 1 + rand(6)
  end

  def showing
    @showing_number
  end
end
#  Since I'm not going to use this die again,
#  I don't need to save it in a variable.
puts Die.new.showing

# with initialize
class Die

  def initialize
    #  I'll just roll the die, though we could do something else
    #  if we wanted to, such as setting the die to have 6 showing.
    roll
  end

  def roll
    @number_showing = 1 + rand(6)
  end

  def showing
    @number_showing
  end

end

puts Die.new.showing

#  Die containing cheat method
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

  def cheat(num)
    if num < 1  || num > 6.0
      return 'Looks like we have cheater!'
    end
    @number_showing = num
  end

end

die = Die.new
puts die.showing
puts die.roll
puts die.showing
puts die.cheat(7)
puts die.showing

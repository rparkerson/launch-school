=begin
Question 9

If we have this class:

class Game
  def play
    "Start the game!"
  end
end

class Bingo < Game
  def rules_of_play
    #rules of play
  end
end

What would happen if we added a play method to the Bingo class, keeping in
mind that there is already a method of this name in the Game class that the
Bingo class inherits from.

The order of which method a name is executed is determined by the method
lookup path. Since Bingo(or the calling object's class) is before the
super classes in the method lookup path the `play` method is executed from
Bingo and the lookup chain is resolved, so it stops looking there. In this
case it is first come first served.
=end

class Game
  def play
    "Start the game!"
  end
end

class Bingo < Game
  def rules_of_play
    #rules of play
  end

  def play
    # This method overrides the inherited `play` method and is executed instead
    "Eyes down."
  end
end

p Bingo.new.play

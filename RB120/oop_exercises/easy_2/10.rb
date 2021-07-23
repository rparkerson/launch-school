=begin
Nobility

Now that we have a Walkable module, we are given a new challenge. Apparently
some of our users are nobility, and the regular way of walking simply isn't
good enough. Nobility need to strut.

We need a new class Noble that shows the title and name when walk is called:

byron = Noble.new("Byron", "Lord")
p byron.walk
# => "Lord Byron struts forward"

We must have access to both name and title because they are needed for other
purposes that we aren't showing here.

byron.name
=> "Byron"
byron.title
=> "Lord"
=end

module Walkable
  def walk
    "#{name} #{gait} forward"
  end
end


class Person
  include Walkable
  
  def initialize(name)
    @name = name
  end
  
  private
  
  attr_reader :name

  def gait
    "strolls"
  end
end

class Noble < Person
  def initialize(name, title)
    super(name)
    @title = title
  end
  
  private
  
  attr_reader :title

  def name
    "#{title} #{@name}"
  end

  def gait
    "struts"
  end
end

class Cat
  include Walkable
  
  def initialize(name)
    @name = name
  end
  
  private
  
  attr_reader :name

  def gait
    "saunters"
  end
end

class Cheetah
  include Walkable
  
  def initialize(name)
    @name = name
  end
  
  private
  
  attr_reader :name
  
  def gait
    "runs"
  end
end

mike = Person.new("Mike")
p mike.walk
# => "Mike strolls forward"

kitty = Cat.new("Kitty")
p kitty.walk
# => "Kitty saunters forward"

flash = Cheetah.new("Flash")
p flash.walk
# => "Flash runs forward"

byron = Noble.new("Byron", "Lord")
p byron.walk
# => "Lord Byron struts forward"

# Provided solution:
module Walkable
  def walk
    "#{self} #{gait} forward"
  end
end

class Person
  attr_reader :name

  include Walkable

  def initialize(name)
    @name = name
  end

  def to_s
    name
  end

  private

  def gait
    "strolls"
  end
end

class Cat
  attr_reader :name

  include Walkable

  def initialize(name)
    @name = name
  end

  def to_s
    name
  end

  private

  def gait
    "saunters"
  end
end

class Cheetah
  attr_reader :name

  include Walkable

  def initialize(name)
    @name = name
  end

  def to_s
    name
  end

  private

  def gait
    "runs"
  end
end

class Noble
  attr_reader :name, :title

  include Walkable

  def initialize(name, title)
    @title = title
    @name = name
  end

  def to_s
    "#{title} #{name}"
  end

  private

  def gait
    "struts"
  end
end

mike = Person.new("Mike")
p mike.walk
# => "Mike strolls forward"

kitty = Cat.new("Kitty")
p kitty.walk
# => "Kitty saunters forward"

flash = Cheetah.new("Flash")
p flash.walk
# => "Flash runs forward"

byron = Noble.new("Byron", "Lord")
p byron.walk
# => "Lord Byron struts forward"

=begin
Further Exploration

This exercise can be solved in a similar manner by using inheritance; a Noble
is a Person, and a Cheetah is a Cat, and both Persons and Cats are Animals.
What changes would you need to make to this program to establish these
relationships and eliminate the two duplicated #to_s methods?
The #to_s method can be used in a parent class once.

Is to_s the best way to provide the name and title functionality we needed
for this exercise? Might it be better to create either a different name method
(or say a new full_name method) that automatically accesses @title and @name?
There are tradeoffs with each choice -- they are worth considering.

Adding a full_name method could work. The upside is name and title can be
accessed independantly however the walkable module would need to use
full_name instead of name and some classes which include walkable might
have no need for a full_name method but would need it implemented to use
the walkable module method walk. 

How the classes are implemented and what type of future use they might need
would need to be considered. 

It seems like a poor design though to need to add new full_name methods
(or any method) into a class when a module is included. An alternative is to
include the full_name method in the Walkable module, with title having a
default parameter of an empty string.
=end

# Using class inheritance for inherited behaviors:
class Animal
  attr_reader :name

  def initialize(name)
    @name = name
  end

  def walk
    "#{self} #{gait} forward"
  end

  def to_s
    name
  end
end

class Person < Animal
  private

  def gait
    "strolls"
  end
end

class Noble < Person
  attr_reader :title

  def initialize(name, title)
    super(name)
    @title = title
  end

  def to_s
    "#{title} #{name}"
  end

  private

  def gait
    "struts"
  end
end

class Cat < Animal
  private

  def gait
    "saunters"
  end
end

class Cheetah < Cat
  private

  def gait
    "runs"
  end
end

mike = Person.new("Mike")
p mike.walk
# => "Mike strolls forward"

kitty = Cat.new("Kitty")
p kitty.walk
# => "Kitty saunters forward"

flash = Cheetah.new("Flash")
p flash.walk
# => "Flash runs forward"

byron = Noble.new("Byron", "Lord")
p byron.walk
# => "Lord Byron struts forward"

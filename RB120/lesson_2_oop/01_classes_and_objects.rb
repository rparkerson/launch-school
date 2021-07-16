# Lecture Excercises

class Person
  attr_accessor :name

  def initialize(name)
    self.name = name
  end
end

bob = Person.new('bob')
p bob.name   # => 'bob'
bob.name = 'Robert'
p bob.name   # => 'bob'

class Person
  attr_accessor :first_name, :last_name
  
  def initialize(first_name = '', last_name = '')
    self.first_name = first_name
    self.last_name = last_name
  end

  def name
    @name = "#{self.first_name} #{self.last_name}"
  end
end

bob = Person.new('Robert')
p bob.name                  # => 'Robert'
p bob.first_name            # => 'Robert'
p bob.last_name             # => ''
bob.last_name = 'Smith'
p bob.name                  # => 'Robert Smith'

class Person
  attr_accessor :first_name, :last_name

  def initialize(full_name)
    names = full_name.split
    self.first_name = names.first
    self.last_name = names.size > 1 ? names.last : ''
  end

  def name
    "#{self.first_name} #{self.last_name}"
  end
end

bob = Person.new('Robert')
p bob.name                  # => 'Robert'
p bob.first_name            # => 'Robert'
p bob.last_name             # => ''
bob.last_name = 'Smith'
p bob.name                  # => 'Robert Smith'

class Person
  attr_accessor :first_name, :last_name

  def initialize(full_name)
    self.name = full_name
  end

  def name=(full_name)
    parts = full_name.split
    self.first_name = parts.first
    self.last_name  = parts.size > 1 ? parts.last : ''
  end

  def name
    "#{self.first_name} #{self.last_name}".strip
  end
end

bob = Person.new('Robert')
p bob.name                  # => 'Robert'
p bob.first_name            # => 'Robert'
p bob.last_name             # => ''
bob.last_name = 'Smith'
p bob.name                  # => 'Robert Smith'

bob.name = "John Adams"
p bob.first_name            # => 'John'
p bob.last_name             # => 'Adams'

# Provided Solution
class Person
  attr_accessor :first_name, :last_name

  def initialize(full_name)
    parse_full_name(full_name)
  end

  def name
    "#{first_name} #{last_name}".strip
  end

  def name=(full_name)
    parse_full_name(full_name)
  end

  private

  def parse_full_name(full_name)
    parts = full_name.split
    self.first_name = parts.first
    self.last_name = parts.size > 1 ? parts.last : ''
  end
end

class Person
  attr_accessor :first_name, :last_name

  def initialize(full_name)
    parse_full_name(full_name)
  end

  def name
    "#{first_name} #{last_name}".strip
  end

  def name=(full_name)
    parse_full_name(full_name)
  end

  def to_s
    self.name
  end

  private

  def parse_full_name(full_name)
    parts = full_name.split
    self.first_name = parts.first
    self.last_name = parts.size > 1 ? parts.last : ''
  end
end

bob = Person.new('Robert Smith')
rob = Person.new('Robert Smith')

p bob.name == rob.name
p bob.to_s == rob.to_s

class Person
  attr_accessor :first_name, :last_name

  def initialize(full_name)
    parse_full_name(full_name)
  end

  def name
    "#{first_name} #{last_name}".strip
  end

  def name=(full_name)
    parse_full_name(full_name)
  end

  def to_s
    self.name
  end

  private

  def parse_full_name(full_name)
    parts = full_name.split
    self.first_name = parts.first
    self.last_name = parts.size > 1 ? parts.last : ''
  end
end

bob = Person.new("Robert Smith")
puts "The person's name is: #{bob}"
# => The person's name is: #<Person:0x0000563ff133d3d0>
# the object instantiated by Person is output which the local variable bob
# references after calling to_s on it

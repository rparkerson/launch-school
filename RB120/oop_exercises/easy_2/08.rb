=begin
Fix The Program - Expander

What is wrong with the following code? What fix(es) would you make?

class Expander
  def initialize(string)
    @string = string
  end

  def to_s
    self.expand(3)
  end

  private

  def expand(n)
    @string * n
  end
end

expander = Expander.new('xyz')
puts expander

I would delete self so that the to_s expander instance method will work on Ruby
versions prior to 2.7.  
=end

class Expander
  def initialize(string)
    @string = string
  end

  def to_s
    expand(3)
  end

  # Alt for testing purposes and ignoring visibility restrictions:
  # def to_s
  #   self.send(:expand, 3)
  # end

  private

  def expand(n)
    @string * n
  end
end

expander = Expander.new('xyz')
puts expander

# alternative student solution:
class Expander
  def initialize(string)
    @string = string
  end

  def to_s
    self.expand(3)
  end

  protected

  def expand(n)
    @string * n
  end
end

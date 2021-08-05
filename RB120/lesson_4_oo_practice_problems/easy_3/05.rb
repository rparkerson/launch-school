=begin
Question 5

If I have the following class:

class Television
  def self.manufacturer
    # method logic
  end

  def model
    # method logic
  end
end

What would happen if I called the methods like shown below?

tv = Television.new
tv.manufacturer
tv.model

Television.manufacturer
Television.model

There is a difference between class and instance methods.  Class methods
are prepended with `self`. The self.manufacturer on the Television instance
will raise an exception and calling model on the Television class will raise
an exception, since there are not defined methods for them.
=end

class Television
  def self.manufacturer
    # method logic
  end

  def model
    # method logic
  end
end

tv = Television.new 
tv.manufacturer # raise an exception no instance method with that name
tv.model # would run

Television.manufacturer # would run
Television.model # raise an exception no class method with that name

=begin
Question 6

If I have the following class:

class Television
  def self.manufacturer
    # method logic
  end

  def model
    # method logic
  end
end

Which one of these is a class method (if any) and how do you know?
How would you call a class method?

The class methods in Classes (like Television) are prefixed with `self`.
The class method is called with the class so:
Television.manufacturer
or Television::manufacturer
=end

class Television
  def self.manufacturer
    # method logic
    "I'm a class method"
  end

  def model
    # method logic
  end
end

p Television.manufacturer
p Television::manufacturer # also works but may be confused with other `::` uses

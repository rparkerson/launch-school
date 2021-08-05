=begin
Question 6

If we have these two methods in the Computer class:

class Computer
  attr_accessor :template

  def create_template
    @template = "template 14231"
  end

  def show_template
    template
  end
end

and

class Computer
  attr_accessor :template

  def create_template
    self.template = "template 14231"
  end

  def show_template
    self.template
  end
end

What is the difference in the way the code works?

In effect this produces the same result and behaves the same.  The first example
is using a direct reference to the `@template` instance variable when setting it
in the `create_template` method. The `show_template` method references the
getter method `template` with self being implied as the `Computer` instance is
the caller.

The second example uses the setter method in the `create_template` method
and must use `self` to reference the correct method `template=`, instead of the
local variable `template` being assigned with `=`. In the second `show_template`
method the `self` is explicitly used but is not needed since it is implied as
the caller of the `show_template` instance method is also the same `Computer`
instance calling the `template` getter instance method.

As a general rule avoid using `self` where not needed, according to the Ruby
style guide.
=end

class Computer
  attr_accessor :template

  def create_template
    @template = "template 14231"
  end

  def show_template
    template
  end
end

class Computer
  attr_accessor :template

  def create_template
    self.template = "template 14231"
  end

  def show_template
    self.template
  end
end

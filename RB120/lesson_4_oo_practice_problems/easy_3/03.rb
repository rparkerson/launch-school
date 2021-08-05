=begin
Question 3

When objects are created they are a separate realization of a particular class.

Given the class below, how do we create two different instances of this class
with separate names and ages?

class AngryCat
  def initialize(age, name)
    @age  = age
    @name = name
  end

  def age
    puts @age
  end

  def name
    puts @name
  end

  def hiss
    puts "Hisssss!!!"
  end
end

Instances are creating by calling the new class method on the AngryCat class
and passing in the appropriate arguments for the intialize method, the
constructor, to use for the `age` and `name` parameters.

=end

class AngryCat
  def initialize(age, name)
    @age  = age
    @name = name
  end

  def age
    puts @age
  end

  def name
    puts @name
  end

  def hiss
    puts "Hisssss!!!"
  end
end

fluffy = AngryCat.new(3, 'Fluffy')
cuddles = AngryCat.new(2, 'Cuddles')

p fluffy
fluffy.age
fluffy.name

p cuddles
cuddles.age
cuddles.name

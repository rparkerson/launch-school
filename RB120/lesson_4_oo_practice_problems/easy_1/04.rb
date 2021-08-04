=begin
Question 4

If we have a class AngryCat how do we create a new instance of this class?

The AngryCat class might look something like this:

class AngryCat
  def hiss
    puts "Hisssss!!!"
  end

We can create a new instance by calling the class method `new` with the
`AngryCat` class.
end

=end

class AngryCat
  def hiss
    puts "Hisssss!!!"
  end
end

garfield = AngryCat.new
garfield.hiss

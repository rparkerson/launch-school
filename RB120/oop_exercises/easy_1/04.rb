=begin
Fix the Program - Books (Part 2)

Complete this program so that it produces the expected output:

class Book
  def to_s
    %("#{title}", by #{author})
  end
end

book = Book.new
book.author = "Neil Stephenson"
book.title = "Snow Crash"
puts %(The author of "#{book.title}" is #{book.author}.)
puts %(book = #{book}.)

Expected output:

The author of "Snow Crash" is Neil Stephenson.
book = "Snow Crash", by Neil Stephenson.
=end

class Book
  attr_accessor :author, :title

  def to_s
    %("#{title}", by #{author})
  end
end

book = Book.new
book.author = "Neil Stephenson"
book.title = "Snow Crash"
puts %(The author of "#{book.title}" is #{book.author}.)
puts %(book = #{book}.)

# The author of "Snow Crash" is Neil Stephenson.
# book = "Snow Crash", by Neil Stephenson.

=begin
Further Exploration
What do you think of this way of creating and initializing Book objects?
(The two steps are separate.) Would it be better to create and initialize
at the same time like in the previous exercise? What potential problems,
if any, are introduced by separating the steps?

I think it would save a step and makes sense to create the author and 
title at initialization. This would also allow the setter methods for the
author and title instance variables to not be accessible, if needed. Defining
this at initialization would also make any dependant methods within the Book
class we may create work properly at instantiation, if they used values for
author and title instance variables. This depends on the user needs and
how the class is being implemented/designed to determine which is "better".

=end

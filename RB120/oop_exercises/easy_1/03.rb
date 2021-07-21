=begin
Fix the Program - Books (Part 1)

Complete this program so that it produces the expected output:

Expected output:

The author of "Snow Crash" is Neil Stephenson.
book = "Snow Crash", by Neil Stephenson.
=end

class Book
  attr_reader :author, :title

  def initialize(author, title)
    @author = author
    @title = title
  end

  def to_s
    %("#{title}", by #{author})
  end
end

book = Book.new("Neil Stephenson", "Snow Crash")
puts %(The author of "#{book.title}" is #{book.author}.)
puts %(book = #{book}.)

=begin
Further Exploration
What are the differences between attr_reader, attr_writer, and attr_accessor?
Why did we use attr_reader instead of one of the other two? Would it be okay
to use one of the others? Why or why not?

attr_reader adds a getter method and attr_writer adds a setter method while
the attr_accessor adds both. We used attr_reader because we do not want to
allow more access than is needed and only needed a getter for this exercise.
While it would work to use an attr_accessor we do not need the setter and from
a OOP design perspective it is a good idea to not add extra access beyond what
is needed, for simplicity and security reasons.

Instead of attr_reader, suppose you had added the following methods to this
class:
def title
  @title
end

def author
  @author
end

Would this change the behavior of the class in any way? If so, how?
If not, why not? Can you think of any advantages of this code?

Manually writing out the two getter methods is a bit bulkier and is not taking
advantage of a specific Ruby short-hand designed for this purpose, but would not
change the behavior in this specific exercise. It is different syntax for the
same behavior being implemented. The advantage to defining custom method, like
above, is that it allows extra flexibility which can be used to implement
additional functionality. For example formating the string of the title or
author with capitalization.
=end

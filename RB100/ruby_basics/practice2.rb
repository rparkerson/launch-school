require 'pry'

# break returns the supplied value or otherwise returns `nil`
# The underscore may be used to enhance readability for humans.
# You may place an underscore anywhere in the number.
# :name

# p "abcdefghijklmnopqrstuvwxyz".upcase(:lithuanian)
# p String.new

# a = %w(a b c d e)
# p a.insert(3, 5, 6, 7)

# s = 'abc def ghi,jkl mno pqr,stu vwx yz'
# puts s.split.inspect # %w(abc def ghi,jkl mno pqr,stu vwx yz)
# puts s.split(',').inspect # ['abc def ghi', 'jkl mno pqr', 'stu vwx yz']
# puts s.split(',', 2).inspect # ['abc def ghi', 'jklmno pqr,stu vwx yz']
# puts s.split(nil).inspect

# a = 7

# def my_value(b)
#   b += 10
# end

# my_value(a)
# puts a
=begin
On the last line this will output the same integer 7 that the local variable
`a` was initialized to on the first line. Passing the object referenced by
a to the `my_value` method invocation as an argument sets the parameter `b`,
in the method definition to reference that argument object. Within the
method definition the local variable `b` is reassigned to 10, and `b` points
to a new object. So `a` remains unchanged.
=end
=begin
What's My Value? (Part 2)
What will the following code print, and why? Don't run the code until you
have tried to answer.

This will output 7. Within the method definition the object referenced by
the local variable `a` is passed in as an argument and a differnet local
variable `a` is set to the same ojbect 7. This different variable `a` within
the method definition is reassigned to 17. Although they have the same variable
name `a` they are 2 different local variables, as method definitions create
there own local variable scope. This means that the local variable `a` outside
the method  definition scope remains unchanged and still points to the integer
7.
=end
# a = 7

# def my_value(a)
#   a += 10
# end

# my_value(a)
# puts a

=begin
What's My Value? (Part 3)
What will the following code print, and why? Don't run the code until you
have tried to answer.

This code will output 7. The local variable within the method definition
`a` is a different `a` from the one on the first and last line, since the
method definition creates it's own local variable scope. The assignment, within
the method definition will not affect the local variable `a` outside the method
definition.
=end
# a = 7

# def my_value(b)
#   a = b
# end

# my_value(a + 5)
# puts a

=begin
What's My Value? (Part 4)
What will the following code print, and why? Don't run the code until
you have tried to answer.

This will output `Xy-zy`. The string object, that the local variable `a`
references, is passed in as an argumentment to the `my_value` method call.
In the method definition the local variable `b` is set to this string object.
Then within the method definition the string is mutated using the `[]=` method.
This sets the string character at indext 2 to `'-'`. Since local variables `b`
and `a` both reference the same string object this mutation is shown when
`a` is ouput on the last line.
=end
# a = "Xyzzy"

# def my_value(b)
#   b[2] = '-'
# end

# my_value(a)
# puts a
 
=begin
What's My Value? (Part 5)
What will the following code print, and why? Don't run the code until you
have tried to answer.

This will output `"Xyzzy"`. This is because the string object local variable
`a` references is passed into the `my_value` method call as an argument, but
within the method definition the object is not mutated. The local variable in
the method `b` is reassigned to point to a different object and this first
argument object, `b` first referenced, was never mutated.
=end
# a = "Xyzzy"

# def my_value(b)
#   b = 'yzzyX'
# end

# my_value(a)
# puts a

=begin
What's My Value? (Part 6)
What will the following code print, and why? Don't run the code until you
have tried to answer.

This code will raise an exception and not print anything. Within the method
definition the local variable `b` is being reassigned to the reutrn value of
`a + a`. When this expression is evaluated since the local variable or method
`a` is not initialized with the method definition or accessible there, there
is an error. Method definitions create their own local variable scope and is
closed to accessing local variables initialized outside the method definition.
Method definitions are self contained with respect to local variables.
=end
# a = 7

# def my_value(b)
#   a = b
#   b = a + a
# end

# my_value(a)
# puts a

=begin
What's My Value? (Part 7)
What will the following code print, and why? Don't run the code until you
have tried to answer.

Since the local variable `a` initialized on the first line is accessible
within the block, `a` is reassigned to the element passed to the block as
an argument during each iteration. So the final iteration the local variable
`a` is reassigned to the integer `3` and that is what is output on the last
line. Local variables initialized outside the block are accessible within the
blocks scope.
=end
# a = 7
# array = [1, 2, 3]

# array.each do |element|
#   a = element
# end

# puts a

=begin
What's My Value? (Part 8)
What will the following code print, and why? Don't run the code until you
have tried to answer.

This code will not print anything but will raise an exception. The local
variable `a` initialized inside the block of the each method call is not
accessible outside of the block. This demonstrates block local variable
scoping rules, that local variables initialized with the block are not
visible outside the block.
=end
# array = [1, 2, 3]

# array.each do |element|
#   a = element
# end

# puts a

=begin
What's My Value? (Part 9)
What will the following code print, and why? Don't run the code until you
have tried to answer.

This will output 7 since the local variable `a` initialized on line 1 is not
accessed or reassigned within the block. The block parameter has the same name
as the local variable `a` which is an example of variable shadowing. Variable
shadowing makes the local variable with the same name initialed outside the
block inaccessible. The reason is that in Ruby the local variable set as the
block parameter with the same name takes precedence.

=end
# a = 7
# array = [1, 2, 3]

# array.each do |a|
#   a += 1
# end

# puts a

=begin
What's My Value? (Part 10)
What will the following code print, and why? Don't run the code until you
have tried to answer.

This code will raise an exception before the last line is executed and the 
program will exit. This is because the local variable `a` is undefined within
the method definition so an error will be raised when `a + b` is evaluated.
Local variables initialized outside the method definition are not accessible
within the scope of the method definition, since method definitions are
self contained with respect to local variables.
=end
# a = 7
# array = [1, 2, 3]

# def my_value(ary)
#   ary.each do |b|
#     a += b
#   end
# end

# my_value(array)
# puts a

=begin
What do you expect to happen when the greeting variable is referenced
in the last line of the code below?

I expect this to throw an exception for greeting variable or method not being
defined. The if conditional body is never executed since it only runs the code
if the condition is true and it is false, so greeting is never initialized.

What actually happens is greeting has a value of nil.  When you initialize
a local variable within an if block, even if that `if` block doesn't get
executed, the local variable is initialized to `nil`
=end

if false
  greeting = "hello world"
end

greeting

p greeting

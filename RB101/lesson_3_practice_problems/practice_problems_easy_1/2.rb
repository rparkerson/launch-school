=begin
Describe the difference between ! and ? in Ruby. And explain what would happen
in the following scenarios:

    what is != and where should you use it?
    This is not equal and is a comparison for when determining if
    the expressions are not equal to each other they will return true.

    put ! before something, like !user_name
    This returns the opposite truthiness value of user_name.  So it is
    "not" the truthiness value

    put ! after something, like words.uniq!
    By convention in Ruby methods that end in ! are destructive and it is
    used to show it mutates the caller.  The ! is part of the method name
    not Ruby syntax

    put ? before something
    This is used as a ternary operator for if...else.

    put ? after something
    This is a Ruby convention that could indicate the return value to the
    method is a boolean.  This tells the user to expect a true or false

    put !! before something, like !!user_name
    This is like saying "not equals" "not equals" true.  So the object keeps the same 
    truthiness value but it will be converted to a boolean true or false

=end

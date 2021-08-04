=begin
Question 1
Which of the following are objects in Ruby?
If they are objects, how can you find out what class they belong to?

    true
    "hello"
    [1, 2, 3, "happy days"]
    142

These are all examples of objects. The `class` method can be called on each
to determine which class the object was instantiated from.

=end

true.class                    # => TrueClass
"hello".class                 # => String
[1, 2, 3, "happy days"].class # => Array
142.class                     # => Integer

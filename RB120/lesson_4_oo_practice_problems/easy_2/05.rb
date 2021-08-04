=begin
Question 5

There are a number of variables listed below. What are the different types
and how do you know which is which?

excited_dog = "excited dog"
@excited_dog = "excited dog"
@@excited_dog = "excited dog"

The variable type can be indentified by what it is prefixed with. @ is an
instance variable @@ is a class variable and no prefix is a local variable.
=end

excited_dog = "excited dog" # local variable
@excited_dog = "excited dog" # instance variable
@@excited_dog = "excited dog" # class variable

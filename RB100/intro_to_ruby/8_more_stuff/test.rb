require "pry"


# 1. Write a program that checks if the sequence of characters "lab" exists
#    in the following strings. If it does exist, print out the word.
#     "laboratory"
#     "experiment"
#     "Pans Labyrinth"
#     "elaborate"
#     "polar bear"

# list=["laboratory","experiment","Pans Labyrinth","elaborate","polar bear"]

# def lab_check(string)
#   if string =~ /lab/
#     p string
#   end
# end

# list.each { |word| lab_check(word) }

# list=["laboratory","experiment","Pans Labyrinth","elaborate","polar bear"]

# def lab_check(array)
#   array.each do |word|
#     if word =~ /lab/
#       p word
#     end
#   end
# end

# lab_check(list)

# list=["laboratory","experiment","Pans Labyrinth","elaborate","polar bear"]

# def lab_check(array)
#   array.each do |word|
#     if word.include? "lab"  # without regex
#       p word
#     else
#       p "No match found."
#     end
#   end
# end

# lab_check(list)

# 2. The following code with not print anything to the screen and
# returns a Proc object. We can use block.call to execute it.

# def execute(&block)
#   block
# end

# p execute { puts "Hello from inside the execute method!" }

# 3. Exception handling is a way anomolous codes are dealt with.
# It is a specific process that deals with errors in a managable
# and predicatble way. Exception handling solves the problem of 
# the program stopping completely and not continueing after an exception
# is encountered.  It changes the flow of control without exiting
# the program entirely.

# 4. Modify the code in exercise 2 to make the block execute properly.

# def execute(&block)
#   block.call
# end

# execute { puts "Hello from inside the execute method!" }

# 5. The code below gives an error because the parameter block in the
# execute method does not accept blocks as arguments so does not recognize
# the block given.  The ampersand (&) is needed in front of the paramenter
# to allow a block to be passed as a parameter.

# def execute(block)
#   block.call
# end

# execute { puts "Hello from inside the execute method!" }

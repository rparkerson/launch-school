def execute(&block)
  block
end

execute { puts "Hello from inside the execute method!" }

# What will the following program print to the screen?
# what will it return?

# This prints nothing to the screen and returns a proc
# to run the block we can use the .call method on line 2
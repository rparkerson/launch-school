def execute(block)
  block.call
end

execute { puts "Hello from inside the execute method!" }

# this error is caused by the argument not being read and being identified
# as a block.  We can fix this by adding a & in from of the paramter block

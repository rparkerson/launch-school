# passing_block.rb

# def take_block(&block)
#   block.call
# end

# take_block do
#   puts "Block being called in the method!"
# end

# take_block {puts "this works too!"}

# passing argument with a block
# def take_block(number, &block)
#   block.call(number)
# end

# number = 42
# take_block(number) do |num|
#   puts "Block being called in the method! #{num}"
# end

def take_proc(proc)
  [1, 2, 3, 4, 5].each do |number|
    proc.call number
  end
end

procedure = Proc.new do |number|
  puts "#{number}. Proc being called in a method!"
end

# one line format:
# procedure = Proc.new { |num| puts "string with #{num}"}

take_proc(procedure)
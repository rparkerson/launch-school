=begin
Alyssa was asked to write an implementation of a rolling buffer. Elements
are added to the rolling buffer and if the buffer becomes full, then new
elements that are added will displace the oldest elements in the buffer.

She wrote two implementations saying, "Take your pick. Do you like << or +
for modifying the buffer?". Is there a difference between the two, other
than what operator she chose to use to add an element to the buffer?

The rolling_buffer1 mutates the buffer object and returns the same object.
The rolling_buffer2 creates of copy of the input_array and then modifies
that new object and retuns a new array.

Depending on its use would determine which method would be used but it
is generally a better idea to not have the method mutate an object and
also return a meaningful value so I would chose 
rolling_buffer2
=end

def rolling_buffer1(buffer, max_buffer_size, new_element)
  buffer << new_element
  buffer.shift if buffer.size > max_buffer_size
  buffer
end

def rolling_buffer2(input_array, max_buffer_size, new_element)
  buffer = input_array + [new_element]
  buffer.shift if buffer.size > max_buffer_size
  buffer
end

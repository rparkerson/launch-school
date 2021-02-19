s = 'abc'
puts s.public_methods.inspect
puts s.public_methods(false).inspect  # => array of just string class methods
#  By putting in the false parameter to overide the default true, this
#  will now print out only String class methods, and not in Object,
#  BasicObject, or Kernel.

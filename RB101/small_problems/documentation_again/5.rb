a = %w(a b c d e)
#puts a
#puts a.fetch(7) # => error - IndexError outside of array bounds
puts a.fetch(7, 'beats me') # => 'beats me'
puts a.fetch(7) { |index| index**2 } # => 49

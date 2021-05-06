=begin
What's wrong with the output?
Josh wants to print an array of numeric strings in reverse numerical order.
However, the output is wrong. Without removing any code, help Josh get the
expected output.

What's wrong with the output?
First of all Josh was working on it, and we all know what happens when Josh
works on code...

Second, The method `p` called on line one outputs the return value of `arr.sort`
before the `do..end` block is executed. Blocks with `do..end` have a lower
precedence than the method `p` so `p` "binds" tighter to the method call
`sort` than the `sort` method does to the `do..end` block on `lines 2-4`.

We can fix this by having Josh work on something else or using parentheses to
ensure the `sort` method call and block is evaluated first, before `p` outputs
the result. We can also save the return value to a variable and use the `p`
method call with the returned value referenced by that variable passed in as
an argument.
=end

arr = ["9", "8", "7", "10", "11"]
p arr.sort do |x, y|
    y.to_i <=> x.to_i
  end

# Expected output: ["11", "10", "9", "8", "7"] 
# Actual output: ["10", "11", "7", "8", "9"] 

arr = ["9", "8", "7", "10", "11"]
p (arr.sort do |x, y|
    y.to_i <=> x.to_i
  end)

# Expected output: ["11", "10", "9", "8", "7"] 
# Actual output: ["10", "11", "7", "8", "9"] 

arr = ["9", "8", "7", "10", "11"]
result = arr.sort do |x, y|
    y.to_i <=> x.to_i
  end

p result
# Expected output: ["11", "10", "9", "8", "7"] 
# Actual output: ["10", "11", "7", "8", "9"] 

arr = ["9", "8", "7", "10", "11"]
p arr.sort { |x, y| y.to_i <=> x.to_i }

# Expected output: ["11", "10", "9", "8", "7"] 
# Actual output: ["10", "11", "7", "8", "9"] 

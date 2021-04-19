=begin
Egyptian Fractions
A Rational Number is any number that can be represented as the result of
the division between two integers, e.g., 1/3, 3/2, 22/7, etc. The number
to the left is called the numerator, and the number to the right is called
the denominator.

A Unit Fraction is a rational number where the numerator is 1.

An Egyptian Fraction is the sum of a series of distinct unit fractions
(no two are the same), such as:

1   1    1    1
- + - + -- + --
2   3   13   15

Every positive rational number can be written as an Egyptian fraction.
For example:

    1   1   1   1
2 = - + - + - + -
    1   2   3   6

Write two methods: one that takes a Rational number as an argument,
and returns an Array of the denominators that are part of an Egyptian
Fraction representation of the number, and another that takes an Array
of numbers in the same format, and calculates the resulting Rational number.
You will need to use the Rational class provided by Ruby.

Examples:

egyptian(Rational(2, 1))    # -> [1, 2, 3, 6]
egyptian(Rational(137, 60)) # -> [1, 2, 3, 4, 5]
egyptian(Rational(3, 1))    # -> [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 15, 230, 57960]

unegyptian(egyptian(Rational(1, 2))) == Rational(1, 2)
unegyptian(egyptian(Rational(3, 4))) == Rational(3, 4)
unegyptian(egyptian(Rational(39, 20))) == Rational(39, 20)
unegyptian(egyptian(Rational(127, 130))) == Rational(127, 130)
unegyptian(egyptian(Rational(5, 7))) == Rational(5, 7)
unegyptian(egyptian(Rational(1, 1))) == Rational(1, 1)
unegyptian(egyptian(Rational(2, 1))) == Rational(2, 1)
unegyptian(egyptian(Rational(3, 1))) == Rational(3, 1)

Every rational number can be expressed as an Egyptian Fraction. In fact,
every rational number can be expressed as an Egyptian Fraction in an
infinite number of different ways. Thus, the first group of examples
may not show the same values as your solution. They do, however, show
the expected form of the solution. The remaining examples merely demonstrate
that the output of egyptian can be reversed by unegyptian.

For more info on Egyptian Fractions, see this page.

P
input: 2 integers as arguments to rational method
output: array (containing the numerator of an egyptian fractions)
input2: array (containing numerators of egyptian fractions)
output2: rational number method argument (2 integers)
explicit rules:
write 2 methods
first takes a rational number (division of 2 integers)
return an egyptian fraction
egyptian fractions are the sum of distinct unit fractions (1/n)
there are infinite numbers of egyptian fractions expressions possible
use the Rational class
implicit:
use fractions instead of decimals
question:
which problem is solved first ? either - follow order from examples

D
integers
arrays

A
- express the fraction using Rational method(a, b)
- find the largest fraction that goes into the fraction
- find the next largest
- continue until fraction == egyptian fraction (sum of distinct unit fractions)
- find the next unit fraction
- place the denominators in an array
- return the array

- if numerator == denominator
  - return [1]
- if numerator == 1
  - return [denominator]
- if the numerator > denominator
  - start with 1/1
  - finds the next largest fraction
- if the numerator < denominator
  - find next largest fraction

- initialize a variable `unit_denominator` to 1
- initialize an empty array `result`
- initialize remainder
- create loop
  - remainder variable assigned to rational number - 1 / unit_denominator 
  - if remainder is zero
    - add unit_denominator to result array
    - remainder
  - if remainder is positive 
    - add denominator to `result` array
    - update remainder to be equal to ratial number - (1/unit_denominator)
  - else
    increment `unit_denominator` by 1
  - break once remainder = 0
- return array

*divmod
=end

def egyptian(rational)
  unit_denominator = 1
  result = []
  remainder = rational

  loop do
    remainder -= Rational(1, unit_denominator)
    if remainder.zero?
      result << unit_denominator
    elsif remainder.positive?
      result << unit_denominator
      unit_denominator += 1
    else
      remainder = remainder + Rational(1, unit_denominator)
      unit_denominator += 1
    end
    return result if remainder == 0
  end
end

p egyptian(Rational(2, 1))    # -> [1, 2, 3, 6]
p egyptian(Rational(137, 60)) # -> [1, 2, 3, 4, 5]
p egyptian(Rational(3, 1))    # -> [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 15, 230, 57960]
p egyptian(Rational(1, 1))    # -> [1]

def unegyptian(arr)
  arr.reduce(0) { |sum, denominator| sum + Rational(1, denominator) }
end

 p unegyptian(egyptian(Rational(1, 2))) == Rational(1, 2)
p unegyptian(egyptian(Rational(3, 4))) == Rational(3, 4)
p unegyptian(egyptian(Rational(39, 20))) == Rational(39, 20)
p unegyptian(egyptian(Rational(127, 130))) == Rational(127, 130)
p unegyptian(egyptian(Rational(5, 7))) == Rational(5, 7)
p unegyptian(egyptian(Rational(1, 1))) == Rational(1, 1)
p unegyptian(egyptian(Rational(2, 1))) == Rational(2, 1)
p unegyptian(egyptian(Rational(3, 1))) == Rational(3, 1)

# Provided Solution
def egyptian(target_value)
  denominators = []
  unit_denominator = 1
  until target_value == 0
    unit_fraction = Rational(1, unit_denominator)
    if unit_fraction <= target_value
      target_value -= unit_fraction
      denominators << unit_denominator
    end

    unit_denominator += 1
  end

  denominators
end

def unegyptian(denominators)
  denominators.inject(Rational(0)) do |accum, denominator|
    accum + Rational(1, denominator)
  end
end

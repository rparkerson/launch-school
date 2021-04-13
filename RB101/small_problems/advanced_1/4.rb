=begin
Transpose MxN
In the previous exercise, you wrote a method to transpose a 3 x 3 matrix
as represented by a ruby Array of Arrays.

Matrix transposes aren't limited to 3 x 3 matrices, or even square
matrices. Any matrix can be transposed by simply switching columns with rows.

Modify your transpose method from the previous exercise so it works with
any matrix with at least 1 row and 1 column.

Examples:

transpose([[1, 2, 3, 4]]) == [[1], [2], [3], [4]]
transpose([[1], [2], [3], [4]]) == [[1, 2, 3, 4]]
transpose([[1, 2, 3, 4, 5], [4, 3, 2, 1, 0], [3, 7, 8, 6, 2]]) ==
  [[1, 4, 3], [2, 3, 7], [3, 2, 8], [4, 1, 6], [5, 0, 2]]
transpose([[1]]) == [[1]]

P
input: array of arrays (at least 1 x 1 matrix)
output: new array
explicit rules:
modify the previous transpose method
takes any matrix of at least 1 row and 1 column
implicit:
all sub-arrays should be the same size
takes one argument

D
arrays

A
- matrix number of rows(sub-arrays) = result number of sub-array elements
- matrix number of columns(sub-array elements) = number of sub-arrays
- 
=end

def transpose(matrix)
  transposed = []
  (matrix.first.size).times do |index|
    column = matrix.map { |row| row[index] }
    transposed << column
  end
  transposed
end

p transpose([[1, 2, 3, 4]]) == [[1], [2], [3], [4]]
p transpose([[1], [2], [3], [4]]) == [[1, 2, 3, 4]]
p transpose([[1, 2, 3, 4, 5], [4, 3, 2, 1, 0], [3, 7, 8, 6, 2]]) ==
  [[1, 4, 3], [2, 3, 7], [3, 2, 8], [4, 1, 6], [5, 0, 2]]
p transpose([[1]]) == [[1]]

def transpose(matrix)
  transposed = Array.new(matrix.first.size) {[]}
  matrix.each do |row|
    row.each_with_index do |element, index|
      transposed[index] << element
    end
  end
  transposed
end

p transpose([[1, 2, 3, 4]]) == [[1], [2], [3], [4]]
p transpose([[1], [2], [3], [4]]) == [[1, 2, 3, 4]]
p transpose([[1, 2, 3, 4, 5], [4, 3, 2, 1, 0], [3, 7, 8, 6, 2]]) ==
  [[1, 4, 3], [2, 3, 7], [3, 2, 8], [4, 1, 6], [5, 0, 2]]
p transpose([[1]]) == [[1]]

def transpose(matrix)
  result = []
  (0...matrix.first.size).each do |column_index|
    new_row = (0...matrix.size).map { |row_index| matrix[row_index][column_index] }
    result << new_row
  end
  result
end

p transpose([[1, 2, 3, 4]]) == [[1], [2], [3], [4]]
p transpose([[1], [2], [3], [4]]) == [[1, 2, 3, 4]]
p transpose([[1, 2, 3, 4, 5], [4, 3, 2, 1, 0], [3, 7, 8, 6, 2]]) ==
  [[1, 4, 3], [2, 3, 7], [3, 2, 8], [4, 1, 6], [5, 0, 2]]
p transpose([[1]]) == [[1]]

# Refactored
def transpose(matrix)
  transposed = []
  (matrix.first.size).times do |index|
    transposed << matrix.map { |row| row[index] }
  end
  transposed
end

p transpose([[1, 2, 3, 4]]) == [[1], [2], [3], [4]]
p transpose([[1], [2], [3], [4]]) == [[1, 2, 3, 4]]
p transpose([[1, 2, 3, 4, 5], [4, 3, 2, 1, 0], [3, 7, 8, 6, 2]]) ==
  [[1, 4, 3], [2, 3, 7], [3, 2, 8], [4, 1, 6], [5, 0, 2]]
p transpose([[1]]) == [[1]]

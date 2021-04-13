=begin
Rotating Matrices
As we saw in the previous exercises, a matrix can be represented in ruby
by an Array of Arrays. For example:
1  5  8
4  7  2
3  9  6
can be described by the Array of Arrays:
matrix = [
  [1, 5, 8],
  [4, 7, 2],
  [3, 9, 6]
]
A 90-degree rotation of a matrix produces a new matrix in which each
side of the matrix is rotated clockwise by 90 degrees. For example,
the 90-degree rotation of the matrix shown above is:
3  4  1
9  7  5
6  2  8
A 90 degree rotation of a non-square matrix is similar. For example,
the rotation of:
3  4  1
9  7  5
is:
9  3
7  4
5  1
Write a method that takes an arbitrary matrix and rotates it 90 degrees
clockwise as shown above.
Examples
matrix1 = [
  [1, 5, 8],
  [4, 7, 2],
  [3, 9, 6]
]
matrix2 = [
  [3, 7, 4, 2],
  [5, 1, 0, 8]
]
new_matrix1 = rotate90(matrix1)
new_matrix2 = rotate90(matrix2)
new_matrix3 = rotate90(rotate90(rotate90(rotate90(matrix2))))
p new_matrix1 == [[3, 4, 1], [9, 7, 5], [6, 2, 8]]
p new_matrix2 == [[5, 3], [1, 7], [0, 4], [8, 2]]
p new_matrix3 == matrix2

This program should print "true" three times.

P
input: array of arrays
output: return new array of arrays
explicit rules:
write a method
takes an array and returns an array
new array should be rotated 90 degrees clockwise
matrix can be any size
implicit:
assume matrix is at least 1 x 1
the column count becomes the row count and vice versa when rotated
question:
is an empty array (0 rows 0 columns) a matrix? -not mentioned - ignore
can we use transpose method? yes - no restrictions on methods

A
- Find the transposed value as before, but reverse the order

- initialize a new array transposed
- iterate through the the sub arrays in reverse order
- iterate through the elements(in order) of the sub arrays
=end

def rotate90(matrix)
  matrix.transpose.map(&:reverse)
end

matrix1 = [
  [1, 5, 8],
  [4, 7, 2],
  [3, 9, 6]
]
matrix2 = [
  [3, 7, 4, 2],
  [5, 1, 0, 8]
]
new_matrix1 = rotate90(matrix1)
new_matrix2 = rotate90(matrix2)
new_matrix3 = rotate90(rotate90(rotate90(rotate90(matrix2))))
p new_matrix1 == [[3, 4, 1], [9, 7, 5], [6, 2, 8]]
p new_matrix2 == [[5, 3], [1, 7], [0, 4], [8, 2]]
p new_matrix3 == matrix2

def rotate90(matrix)
  transposed = []
  matrix.first.size.times do |index|
    transposed << matrix.reverse.map { |row| row[index] }
  end
  transposed
end

matrix1 = [
  [1, 5, 8],
  [4, 7, 2],
  [3, 9, 6]
]
matrix2 = [
  [3, 7, 4, 2],
  [5, 1, 0, 8]
]
new_matrix1 = rotate90(matrix1)
new_matrix2 = rotate90(matrix2)
new_matrix3 = rotate90(rotate90(rotate90(rotate90(matrix2))))
p new_matrix1 == [[3, 4, 1], [9, 7, 5], [6, 2, 8]]
p new_matrix2 == [[5, 3], [1, 7], [0, 4], [8, 2]]
p new_matrix3 == matrix2

# Further Exploration - Can you modify your solution to perform
# 90, 180, 270, and 360 degree rotations based on an argument?
def rotate90(matrix, degrees = 90)
  rotated = matrix
  (degrees / 90).times { rotated = rotated.transpose.map(&:reverse) }
  rotated
end

matrix1 = [
  [1, 5, 8],
  [4, 7, 2],
  [3, 9, 6]
]
matrix2 = [
  [3, 7, 4, 2],
  [5, 1, 0, 8]
]
new_matrix1 = rotate90(matrix1, 360)
new_matrix2 = rotate90(matrix2, 360)
new_matrix3 = rotate90(rotate90(rotate90(rotate90(matrix2))))
p new_matrix1 #== [[3, 4, 1], [9, 7, 5], [6, 2, 8]]
p new_matrix2 #== [[5, 3], [1, 7], [0, 4], [8, 2]]
p new_matrix3 #== matrix2
matrix = [
  [3, 7, 4, 2],
  [5, 1, 0, 8]
]
p rotate90(matrix)       == [[5, 3], [1, 7], [0, 4], [8, 2]]
p rotate90(matrix, 180) == [[8, 0, 1, 5], [2, 4, 7, 3]]
p rotate90(matrix, 270)   == [[2, 8], [4, 0], [7, 1], [3, 5]]
p rotate90(matrix, 360)   == [[3, 7, 4, 2], [5, 1, 0, 8]]

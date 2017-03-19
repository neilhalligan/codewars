# Write a function that accepts a square matrix (n x n 2D array) and returns the
# determinant of the matrix.
# How to take the determinant of a matrix -- it is simplest to start with the
# smallest cases: A 1x1 matrix |a| has determinant a. A 2x2 matrix [[a, b], [c, d]] or

# |a b|
# |c d|

# has determinant ad - bc.
# The determinant of an n x n sized matrix is calculated by reducing the problem
# to the calculation of the determinants of n n-1 x n-1 matrices. For the 3x3 case,
#   [[a, b, c], [d, e, f], [g, h, i]] or

# |a b c|
# |d e f|
# |g h i|

# the determinant is: a * det(a_minor) - b * det(b_minor) + c * det(c_minor)
# where det(a_minor) refers to taking the determinant of the 2x2 matrix created
# by crossing out the row and column in which the element a occurs, or

# |e f|
# |h i|

# Note the alternation of signs.
# The determinant of larger matrices are calculated analogously, e.g. if M is
# a 4x4 matrix with first row [a, b, c, d], det(M) = a * det(a_minor) - b * det(b_minor)
# + c * det(c_minor) - d * det(d_minor)
# return the determinant of the matrix passed in


def determinant(matrix)
  return matrix[0][0] if matrix.count == 1
  # sum = 0
  matrix[0].map.with_index do |elem, index|
    (-1) ** (index) * elem * determinant( minor(matrix, index) )
  end.reduce(&:+)
  # sum
end

def minor(matrix_copy, det_index)
  matrix_copy = Marshal.load(Marshal.dump(matrix_copy))
  matrix_copy.slice!(0)
  matrix_copy.each do |row|
    row.delete_at(det_index)
  end
  matrix_copy
end


m1 = [ [1, 3], [2, 5] ] # -1
m2 = [ [1] ] # 1
m3 = [ [2,5,3], [1,-2,-1], [1, 3, 4]] # -20

p determinant(m1)
p determinant(m2)
p determinant(m3)


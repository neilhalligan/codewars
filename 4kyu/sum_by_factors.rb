# Given an array of positive or negative integers

# I= [i1,..,in]

# you have to produce a sorted array P of the form

# [ [p, sum of all ij of I for which p is a prime factor
#   (p positive) of ij] ...]

# P will be sorted by increasing order of the prime numbers.
# The final result has to be given as a string in Java, C#
# or C++ and as an array of arrays in other languages.

# Example:

# I = [12, 15] # result = [[2, 12], [3, 27], [5, 15]]
# [2, 3, 5] is the list of all prime factors of the elements
# of I, hence the result.

# Notes: It can happen that a sum is 0 if some numbers are
# negative!

# Example: I = [15, 30, -45] 5 divides 15, 30 and (-45) so
# 5 appears in the result, the sum of the numbers for which
# 5 is a factor is 0 so we have [5, 0] in the result amongst
# others.

require 'prime'

def sumOfDivided(lst)
  prime_factors = []
  result = []
  factorial_sum = []

  # get prime factors
  lst.each do |num|
    Prime.each(num.abs) do |prime|
      prime_factors << prime if num % prime == 0
    end
  end
  prime_factors.uniq!

  #build array
  prime_factors.each do |factor|
    factorial_sum = lst.select { |elem| elem % factor == 0 }.inject(0) { |s, e| s += e }
    result << [factor, factorial_sum]
  end
  result.sort
end


I = [12, 15] # result = [[2, 12], [3, 27], [5, 15]]
p sumOfDivided(I)
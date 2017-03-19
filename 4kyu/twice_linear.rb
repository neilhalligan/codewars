# Consider a sequence u where u is defined as follows:

# The number u(0) = 1 is the first one in u.
# For each x in u, then y = 2 * x + 1 and z = 3 * x + 1 must be in u too.
# There are no other numbers in u.
# Ex: u = [1, 3, 4, 7, 9, 10, 13, 15, 19, 21, 22, 27, ...]

# 1 gives 3 and 4, then 3 gives 7 and 10, 4 gives 9 and 13, then 7 gives
# 15 and 22 and so on...

# Task:

# Given parameter n the function dbl_linear (or dblLinear...) returns
# the element u(n) of the ordered (with <) sequence u.

# Example:

# dbl_linear(10) should return 22

################
#sudo code##
#1. just lash out all the numbers, sort into array, pick nth number

def dbl_linear(n)
arr = [1]
y_mult = 1
z_mult = 1
  while arr.size - 1 < n
    if y_mult * 2 + 1 < z_mult * 3 + 1
      arr << y_mult * 2 + 1
      y_mult = arr[arr.index(y_mult) + 1]
    else
      arr << z_mult * 3 + 1
      z_mult = arr[arr.index(z_mult) + 1]
    end
    arr.pop if arr.last == arr[-2]
  end
  arr.last
end

p dbl_linear(20) # 57


# Consider a sequence u where u is defined as follows:

# The number u(0) = 1 is the first one in u.
# For each x in u, then y = 2 * x + 1 and z = 3 * x + 1 must be in u too.
# There are no other numbers in u.
# Ex: u = [1, 3, 4, 7, 9, 10, 13, 15, 19, 21, 22, 27, ...]

# 1 gives 3 and 4, then 3 gives 7 and 10, 4 gives 9 and 13, then 7 gives 15 and 22 and so on...

# Task:

# Given parameter n the function dbl_linear (or dblLinear...) returns the element u(n) of the ordered (with <) sequence u.

# Example:

# dbl_linear(10) should return 22

################
#sudo code##
#1. just lash out all the numbers, sort into array, pick nth number
#2. how to know how far to go? even an

# u = [1,   3,    4,        7,        9,            10,        13,          15, 19, 21, 22, 27, ...]
# u = [1, 2x+1  3x+1  4x + 2 + 1   6x + 2 + 1    6x + 3 + 1                      ]
#     [1, 2x+1  3x+1  2(2x+1) +1   2(3x +1) +1   3(2x+1) +1   3(3x +1) +1  2x(2(2x+1)+1) + 1     31     40
 #         2x      3x      2x,2x       2x,3x           3x,2x         3x,3x        2x,2x,2x      2x|4    3x, 3x, 3x



def dbl_linear(n)
arr = [1]
y_mult = 1
z_mult = 1
  while arr.size - 1 < n
    if y_mult*2 + 1 < z_mult*3 + 1
      arr << y_mult*2 + 1
      y_mult = arr[arr.index(y_mult) + 1]
    else
      arr << z_mult*3 + 1
      z_mult = arr[arr.index(z_mult) + 1]
    end
    arr.delete_at(-1)if arr.last == arr[-2]
  end
  arr.last
end


# def dbl_linear(n)
# arr = [1]
# y_mult = 1
# z_mult = 1
#   # first fill out to n, messily (could find method to discover how far this should go)
#   while arr.size - 1 < n
#     arr << y_mult*2 + 1
#     y_mult = arr[arr.index(y_mult) + 1]
#     arr << z_mult*3 + 1
#     z_mult = arr[arr.index(z_mult) + 1]
#     arr = arr.uniq.sort
#     arr << y_mult*2 + 1
#     y_mult = arr[arr.index(y_mult) + 1]
#   end
#   p arr
#   # p z_mult
#   # then fill out excess y_mults in the gap
#   while y_mult*2 +1 < z_mult*3 + 1
#     # p "in ymult after"
#     arr << y_mult*2 + 1
#     y_mult = arr[arr.index(y_mult) + 1]
#     # p y_mult
#     # sleep 1
#     arr = arr.uniq.sort
#   end#
#   p arr
#   # p arr
#   arr[n]
# end


# if ymult > 1.5*z_mult do z next
#   and,

x = [1, 3, 4, 7, 9, 10, 13, 15, 19, 21, 22, 27, 28, 31, 31, 39, 40, 43, 45, 46, 55, 57]
p x.size ==  x.uniq.length
x = x.uniq
p x.size == x.uniq.length
p dbl_linear(20)


# keep an array, where each member needs to be X'd be 2x+1 and 3x+1
# could have an x_mult and a y mult. each time multiply, add to array
# ,and x_mult would go to next index of main array


# if ymult *2 and zmult*3 intersect on same point, then:
#   2y = 3z, y = 1.5z

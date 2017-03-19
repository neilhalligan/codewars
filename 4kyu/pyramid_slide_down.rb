# Pyramids are amazing! Both in architectural and mathematical sense.
# If you have a computer, you can mess with pyramids even if you are not in
# Egypt at the time. For example, let's consider the following problem.
# Imagine that you have a plane pyramid built of numbers, like this one here:

#   /3/
#   \7\ 4
#  2 \4\ 6
# 8 5 \9\ 3
# Here comes the task...

# Let's say that the 'slide down' is a sum of consecutive numbers from the
# top to the bottom of the pyramid. As you can see, the longest 'slide down'
# is 3 + 7 + 4 + 9 = 23

# Your task is to write a function longestSlideDown (in ruby: longest_slide_down)
# that takes a pyramid representation as argument and returns its' longest 'slide down'.
# For example,

# longest_slide_down([[3], [7, 4], [2, 4, 6], [8, 5, 9, 3]])
# # => 23

def longest_slide_down(pyramid)
  pyramid.each_with_index do |row, ri|
    row.each_with_index do |elem, ei|
      next if ri < 1
      # set variables
      left = pyramid[ri - 1][ei - 1]
      right = pyramid[ri - 1][ei]
      left = left.nil? ? 0 : left
      right = right.nil? ? 0 : right
      pyramid[ri][ei] += left > right ? left : right
    end
  end
  return pyramid.last.max
end

p longest_slide_down(
 [[3],
  [7, 4],
  [2, 4, 6],
  [8, 5, 9, 3]])  #, 23, "should work for small pyramids");

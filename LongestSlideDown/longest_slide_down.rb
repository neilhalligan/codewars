require 'pry-byebug'

def longest_slide_down(pyramid)
  pyramid.each_with_index do |row, ri|
    row.each_with_index do |elem, ei|
      next if ri < 1
      left = pyramid[ri - 1][ei - 1]
      right = pyramid[ri - 1][ei]
      left = left.nil? ? 0 : left
      right = right.nil? ? 0 : right
      pyramid[ri][ei] += left > right ? left : right
    endser
  end
  return pyramid.last.max
end



p longest_slide_down([[3], [7, 4], [2, 4, 6], [8, 5, 9, 3]])
# => 23
# 33 takes itfrom 22, or 23

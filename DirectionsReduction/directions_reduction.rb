def dirReduc(arr)
  pairs = { "NORTH" => "SOUTH",
            "SOUTH" => "NORTH",
            "WEST" => "EAST",
            "EAST" => "WEST"}

  arr.reduce([]) do |stack, value|
  pairs[value] == stack.last ? stack.pop : stack.push(value)
  stack
  end
end

dir = ["NORTH","SOUTH","EAST","WEST","SOUTH","WEST","WEST","EAST","NORTH"]

p dirReduc(dir)


# def check(first, second)
# if first == "NORTH" && second == "SOUTH" ||
#    first == "SOUTH" && second == "NORTH" ||
#    first == "WEST" && second == "EAST" ||
#    first == "EAST" && second == "WEST"
#   return true
#   else
#     false
#   end
# end

# def dirReduc(arr)
# index = 0

#   while index < arr.length do
#     # first round check
#     while check(arr[index], arr[index + 1])
#       2.times {arr.delete_at(index)}
#       index -= 1 unless index == 0
#     end
#     index += 1
#   end
#   arr
# end




# 1. start at 0, check if subsequent is opposite direction.
# 1.a if not, same check with subsequent.
# 1.b but if so, delete indexcurrent & index subsequent.
#     then check if index current and index prev match.
#     c. if so, repeat
#     c2 if not, back to step 1

# first, define method to check if subsequent is opposite.

#    "NORTH" = 1, let "SOUTH"  = 0, let "WEST" = 3 let "EAST" = 4

#    if absolute val of arr[i] - arr[i+1] == 1
    # if check(dir, arr[index + 1])
    #   arr.delete_at(index + 1)
    #   arr.delete_at(index)
    #   #after this deletion, need to redo above up until reach subsequent index
    #   if check(arr[index - 1], arr[index])
    #     arr.delete_at(index)
    #     arr.delete_at(index - 1)
    # p arr
    # end
    # p arr

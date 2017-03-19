# seven(times(five)) # must return 35     7(*(5))
# four(plus(nine)) # must return 13
# eight(minus(three)) # must return 5
# six(divided_by(two)) # must return 3

def switch(number, twitch)
  return number if twitch.nil?
  check_num = twitch.index(twitch.find { |x| x != nil })
# p check_num
  case check_num
    when 0 then number + twitch[check_num]
    when 1 then number - twitch[check_num]
    when 2 then number * twitch[check_num]
    when 3 then number / twitch[check_num]
  end
end

def zero(num = nil)
  switch(0, num)
end
def one(num = nil)
  switch(1, num)
end
def two(num = nil)
  switch(2, num)
end
def three(num = nil)
  switch(3, num)
end
def four(num = nil)
  switch(4, num)
end
def five(num = nil)
  switch(5, num)
end
def six(num = nil)
  switch(6, num)
end
def seven(num = nil)
  switch(7, num)
end
def eight(num = nil)
  switch(8, num)
end
def nine(num = nil)
  switch(9, num)
end
def plus(sum)
  [sum,nil,nil,nil]
end
def minus(sum)
  [nil,sum,nil,nil]
end
def times(sum)
  [nil,nil,sum,nil]
end
def divided_by(sum)
  [nil,nil,nil,sum]
end


  p seven(times(five))



# strings not a great idea
# use Math.pow(1,2) type expressions
#

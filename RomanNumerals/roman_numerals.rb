# first take away 1000, add M
# then go for 900 so XM

# >9 one way < 9 other way if = zero do nothing?

# or could do 1000 -100 + 500 -10 +50 + 1 + 1 + 1 + 1

#   1908    5 1 1 1

NUMERALS = { M: 1000, CM: 900, D: 500, CD: 400, C: 100, XC: 90,
             L: 50, XL: 40, X: 10, IX: 9, V: 5, IV: 4, I: 1 }

def solution(number)
  return "" if number == 0
  NUMERALS.each do |key, value|
    return key.to_s + solution(number - value) if number - value >= 0
  end
end

p solution(4)
p solution(2944)
p solution(9)

# Roman = {
#           "I" => 1,
#           "IV" => 4,
#           "V" => 5,
#           "IX" => 9,
#           "X" => 10,
#           "XL" => 40,
#           "L" => 50,
#           "XC" => 90,
#           "C" => 100,
#           "CD" => 400,
#           "D" => 500,
#           "CM" => 900,
#           "M"  => 1000}

# # def solution(number)
# #   output = []
# #   Roman.values.reverse.each do |unit|
# #     while number - unit >= 0
# #       number -= unit
# #       output << Roman.key(unit)
# #     end
# #   end
# #   output.join
# # end



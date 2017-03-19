require 'pry-byebug'
# check to see if subsequent is greater. if so, minus it

# NUMERALS = { M: 1000, CM: 900, D: 500, CD: 400, C: 100, XC: 90,
#              L: 50, XL: 40, X: 10, IX: 9, V: 5, IV: 4, I: 1 }

NUMERALS = { M: 1000, D: 500, C: 100, L: 50, X: 10, V: 5, I: 1 }

def solution(roman)
  total = [0]
  while roman.size > 0 do
    number = NUMERALS[roman.slice!(-1).to_sym]
    number = number * (-1) if numbers[-1] > number
    total << number
    # binding.pry
  end
  total.reduce(&:+)
end


p solution('XXI') # should return 21


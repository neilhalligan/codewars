# Create a function that takes a Roman numeral as its argument and
# returns its value as a numeric decimal integer. You don't need to
# validate the form of the Roman numeral.

# Modern Roman numerals are written by expressing each decimal digit
# of the number to be encoded separately, starting with the leftmost
# digit and skipping any 0s. So 1990 is rendered "MCMXC"
# (1000 = M, 900 = CM, 90 = XC)
# and 2008 is rendered "MMVIII" (2000 = MM, 8 = VIII).
# The Roman numeral for 1666, "MDCLXVI", uses each letter in
# descending order.

# Example:

# solution('XXI') # should return 21

NUMERALS = { M: 1000, D: 500, C: 100, L: 50, X: 10, V: 5, I: 1 }

def solution(roman)
  total = [0]
  while roman.size > 0 do
    number = NUMERALS[roman.slice!(-1).to_sym]
    number = number * (-1) if number[-1] > number
    total << number
    # binding.pry
  end
  total.reduce(&:+)
end


p solution('XXI') # should return 21


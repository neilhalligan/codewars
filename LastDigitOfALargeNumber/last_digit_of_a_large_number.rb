# Define a function

# def last_digit(n1, n2):
#   return
# that takes in two numbers a and b and returns the last decimal digit of a^b. Note that a and b may be very large!

# For example, the last decimal digit of 9^7 is 9, since 9^7 = 4782969. The last decimal digit of (2^200)^(2^300), which has over 10^92 decimal digits, is 6.

# The inputs to your function will always be non-negative integers.

def last_digit(n1, n2)
  sum = 1
  n2.times { sum = (sum * n1).to_s[-1].to_i }
  return sum
end
p last_digit(9, 7)

# parses the mileage number input, and returns a 2 if the number is "interesting"
# (see below), a 1 if an interesting number occurs within the next two miles, or a 0
# if the number is not interesting.

# Note: In Haskell, we use No, Almost and Yes instead of 0, 1 and 2.

# "Interesting" Numbers

# # "boring" numbers
# is_interesting(3, [1337, 256])    # 0
# is_interesting(3236, [1337, 256]) # 0
# # progress as we near an "interesting" number
# is_interesting(11207, []) # 0
# is_interesting(11208, []) # 0
# is_interesting(11209, []) # 1
# is_interesting(11210, []) # 1
# is_interesting(11211, []) # 2

# # nearing a provided "awesome phrase"
# is_interesting(1335, [1337, 256]) # 1
# is_interesting(1336, [1337, 256]) # 1
# is_interesting(1337, [1337, 256]) # 2
# Error Checking


# A number is only interesting if it is greater than 99!
# Input will always be an integer greater than 0, and less than 1,000,000,000.
# The awesomePhrases array will always be provided, and will always be an array,
# but may be empty. (Not everyone thinks numbers spell funny words...)
# You should only ever output 0, 1, or 2.

# Interesting numbers are 3-or-more digit numbers that meet one or more of the
# following criteria:

# Any digit followed by all zeros: 100, 90000
# Every digit is the same number: 1111
# The digits are sequential, incementing†: 1234 up to 0
# The digits are sequential, decrementing‡: 4321
# The digits are a palindrome: 1221 or 73837
# The digits match one of the values in the awesomePhrases array
# † For incrementing sequences, 0 should come after 9, and not before 1, as in 7890.
# ‡ For decrementing sequences, 0 should come after 1, and not before 9, as in 3210.
# So, you should expect these inputs and outputs:

def is_interesting(number, awesome_phrases)
  return 2 if method(number, awesome_phrases)
  return 1 if method(number + 1, awesome_phrases) || method(number +2, awesome_phrases)
  0
end

def method(num, phrases)
  return  (num.to_s.size >= 3 && (num.to_s.slice(1..-1).count("0") == (num.to_s.length - 1) ||
                                /^(\d)\1*$/ =~ num.to_s ||
                                "1234567890".match(num.to_s) ||
                                "9876543210".match(num.to_s) ||
                                phrases.include?(num) ||
                                num.to_s.reverse == num.to_s))
end

p is_interesting(98, [1337, 256])  #,     0);
p  is_interesting(5433, [1, 2]) #,  1);

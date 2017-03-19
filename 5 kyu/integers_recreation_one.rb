# Divisors of 42 are : 1, 2, 3, 6, 7, 14, 21, 42. These divisors squared are: 1, 4, 9, 36, 49, 196, 441, 1764. The sum of the squared divisors is 2500 which is 50 * 50, a square!

# Given two integers m, n (1 <= m <= n) we want to find all integers between m and n whose sum of squared divisors is itself a square. 42 is such a number.

# The result will be an array of arrays(in C an array of Pair), each subarray having two elements, first the number whose squared divisors is a square and then the sum of the squared divisors.

# Examples:

# list_squared(1, 250) --> [[1, 1], [42, 2500], [246, 84100]]
# list_squared(42, 250) --> [[42, 2500], [246, 84100]]
# The form of the examples may change according to the language, see Example Tests: for more details.



def list_squared(m, n)
  output = []
  # get factors
  # auto add [1, 1]
  output << [1,1] if m == 1
  m =2 if m ==1
  (m..n).each do |elem|
    factors = []
    (1..elem/2).each do |num|
      if elem % num == 0
        factors << num
        factors << elem / num
      end
    end
    factors.uniq!
    # set factors squared to find total
    square_total = factors.map { |factor| factor * factor }.reduce(:+)
    output << [elem, square_total] if Math.sqrt(square_total).to_i ** 2 == square_total
  end
  output
end

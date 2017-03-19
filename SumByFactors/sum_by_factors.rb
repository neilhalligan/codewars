require 'prime'

def sumOfDivided(lst)
  prime_factors = []
  result = []
  factorial_sum = []

  # get prime factors
  lst.each do |num|
    Prime.each(num.abs) do |prime|
      prime_factors << prime if num % prime == 0
    end
  end
  prime_factors.uniq!

  #build array
  prime_factors.each do |factor|
    factorial_sum = lst.select { |elem| elem % factor == 0 }.inject(0) { |s, e| s += e }
    result << [factor, factorial_sum]
  end
  result.sort
end

# def sumOfDivided(lst)
#   prime_factor = []
#   factor = Hash.new(0)
#   lst.each do |num|
#     Prime.prime_division(num.abs).each do |p,_|
#       factor[p] += num
#     end
#   end
#   factor.sort
# end

I = [12, 15] # result = [[2, 12], [3, 27], [5, 15]]
p sumOfDivided(I)

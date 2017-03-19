require 'prime'

# for first num, if prime factors = 2 put in array
# if more than two move on to next num
# if 0 or 1 move on to next num

# How To Check for Prime Factors
# divide by prime[0] until !% 0
# then move on to prime[0 +1] and divide into remainder
# use counter for every time divided (this operation is connected to moving to next prime)

# Given positive integers s and a, b, c where
# # a is 1-prime, b 3-prime, c 7-prime find the
# number of solutions of a + b + c = s. Call this
# function puzzle(s).

# ~~pseudo
# get it working for first 1,3,7 prime 32 128



def puzzle(s)
  solutions = 0
  sol_eqns = []
  count_Kprimes(1, 0, s).each do |one_p|
    count_Kprimes(3, 0, s).each do |three_p|
      count_Kprimes(7, 0, s).each do |seven_p|
        if one_p + three_p + seven_p == s
          solutions += 1
          sol_eqns << "#{one_p} + #{three_p} + #{seven_p}"
        end
      end
    end
  end
  return "#{solutions} ([#{sol_eqns.join(", ")}] are solutions)"
end




def count_Kprimes(k, start, nd)
  # setting variables
  output = []
  (start..nd).each do |num|
    factors = 0
    temp = num
    #if divisible by prime, factors increased by one
    Prime.each(num) do |prime_num|
      while temp % prime_num == 0 && prime_num <= temp
        factors += 1
        temp /= prime_num
      end
    end
    # add numbers with k primes to output array
    output << num if factors == k
  end
  output
end

puzzle(143)

# def count_Kprimes(k, start, nd)
#   # setting variables
#   output = []
#   (start..nd).each do |num|
#     factors = 0
#     #if divisible by prime, factors increased by one
#     Prime.each(num) do |prime_num|
#       counter = 1
#       while num % prime_num ** counter == 0 && prime_num <= num
#         factors += 1
#       end
#     end
#     # add numbers with k primes to output array
#     output << num if factors == k
#   end
#   output
# end

# p count_Kprimes(3, 1, 10)

# def puzzle(s)
#   solutions = 0
#   (0..20).each do |o_p|
#     (0..20).each do |t_p|
#       (0..129).each do |s_p|
#         if count_Kprimes(1, 0, o_p)[0] +
#         count_Kprimes(3, 0, t_p)[0] +
#         count_Kprimes(7, 0, s_p)[0] = s
#           solutions += 1
#           puts "#{solutions} ([#{count_Kprimes(1, 0, o_p)[0]} +
#           #{count_Kprimes(1, 0, t_p)[0]} + #{count_Kprimes(1, 0, s_p)[0]}]
#           is solution)"
#         end
#       end
#     end
#   end
# end

# def puzzle(s)
#   solutions = 0
#   if count_Kprimes(1, 0, s)[0] +
#     count_Kprimes(3, 0, s)[0] +
#     count_Kprimes(7, 0, s)[0] = s
#       solutions += 1
#       print "#{solutions} ([#{count_Kprimes(1, 0, s)[0]} + "
#       print "#{count_Kprimes(3, 0, s)[0]} + #{count_Kprimes(7, 0, s)[0]}]"
#       print " is solution)"
#   end
# end

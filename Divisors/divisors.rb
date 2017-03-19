def divisors(n)
  divisors = (2..n/2).select { |x| n % x == 0 }
  divisors.empty? ? "#{n} is prime" : divisors
end

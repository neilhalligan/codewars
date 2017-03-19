def queue_time(customer, n)
  return 0 if customer.empty?
  sum = []

  (0...n).each { |i| sum[i] = customer.slice!(0) }
  sum.delete(nil)

  until customer.empty?
    sum[sum.index(sum.min)] = sum.min + customer.slice!(0)
  end
  return sum.max
end
p queue_time([2, 3, 4, 5], 2)






def queue_time(customer, n)
  arr = Array.new(n, 0)
  customer.each { |custo| arr[arr.index(sum.min)] += custo }
  arr.max
end

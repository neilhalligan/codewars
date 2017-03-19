def find_nb(m)
  n = 0
  while m > 0
    n += 1
    m -= n ** 3
  end
  n = -1 if m < 0
  n
end

p find_nb(9)

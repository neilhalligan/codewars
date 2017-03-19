
# # create a simple calculator that given a string of operators
# (+ - * and /) and numbers separated by spaces returns the value
#   of that expression

# # Example:

# # Calculator.new.evaluate("2 / 2 + 3 * 4 - 6") # => 7
# # Remember about the order of operations! Multiplications and divisions
# have a higher priority and should be performed left-to-right.
# Additions and subtractions have a lower priority and should also be
# performed left-to-right.

# # scan for / or *,
# take them out, with numbers in front and behind
# multiply out
# stick back into string
# search string for more
# while loop ends when only one number left
# use *, /, +, - till all done

class Calculator
  def evaluate(string)
    string.gsub!(/\s+/, "")
    while string.include?("*")
      string = multiply(string)
    end
    while string.include?("/")
      string = divide(string)
    end
    while string.include?("+")
      string = plus(string)
    end
    while string.include?("-")
      string = minus(string)
    end
    string.to_i
  end

  def multiply(string)
    index = string.index("*")
    result = string.slice!(/\d*\*\d*/)
    index = index - result.index("*")
    result = result.split("*").reduce(1){|product, n| product * n.to_i}.to_s
    string.insert(index, result)
  end

  def divide(string)
    index = string.index("\/")
    result = string.slice!(/\d*\/\d*/)
    index = index - result.index("\/")
    result = result.split("\/").reduce(1){|product, n| n.to_i / product}.to_s
    string.insert(index, result)
  end

  def plus(string)
    index = string.index("+")
    result = string.slice!(/\d*\+\d*/)
    index = index - result.index("+")
    result = result.split("+").reduce(0){|product, n| product + n.to_i}.to_s
    string.insert(index, result)
  end

  def minus(string)
    index = string.index("-")
    result = string.slice!(/\d*-\d*/)
    index = index - result.index("-")
    result = result.split("-").reverse.reduce(0){|product, n| n.to_i - product}.to_s
    string.insert(index, result)
  end
end

p Calculator.new.evaluate("2 / 2 + 3 * 4 - 6") # => 7


    # result = string.slice!(/\d*\*\d*/).split("*").reduce(1){|product, n| product * n.to_i}.to_s

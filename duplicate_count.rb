  # Write a function that will return the count of distinct
  # case-insensitive alphabetic characters and numeric digits
  # that occur more than once in the input string. The input
  # string can be assumed to contain only alphanumeric
  # characters, including digits, uppercase and lowercase
  # alphabets.


# def duplicate_count(text)
#   dup_count = {}
#   words = text.split("")
#   words.each do |x, index|
#     if dup_count.include? x
#       dup_count[x] += 1
#     else
#       dup_count[x] = 1
#     end
#   end
#   dup_count.select { |k, v| v >= 2 }.count
# end

def duplicate_count(text)
  dup_count = {}
  text.downcase.split("").each { |x, index| dup_count.has_key?(x) ? dup_count[x] += 1 : dup_count[x] = 1 }
  dup_count.select { |k, v| v >= 2 }.count
end

puts duplicate_count("22aio118d89")


# This time no story, no theory. The examples below show you how to write function accum:

# Examples:

# accum("abcd")    # "A-Bb-Ccc-Dddd"
# accum("RqaEzty") # "R-Qq-Aaa-Eeee-Zzzzz-Tttttt-Yyyyyyy"
# accum("cwAt")    # "C-Ww-Aaa-Tttt"
# The parameter of accum is a string which includes only letters from a..z and A..Z.

def accum(s)
  output = ""
  s.chars.each_with_index do |e, i|
    output << e.capitalize
    i.times { output << e.downcase } unless i == 0
    output << "-" unless s[i+1].nil?
  end
  output
end

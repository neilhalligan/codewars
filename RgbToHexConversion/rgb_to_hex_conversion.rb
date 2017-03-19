# rgb(255, 255, 255) # returns FFFFFF
# rgb(255, 255, 300) # returns FFFFFF
# rgb(0,0,0) # returns 000000
# rgb(148, 0, 211) # returns 9400D3

# take number, divide by 16 and get remainder
# turn decimal and unit part into hexidecimal
# return



def rgb(r, g, b)
  string = ""
  converter = { 0 => "0",
                1 => "1",
                2 => "2",
                3 => "3",
                4 => "4",
                5 => "5",
                6 => "6",
                7 => "7",
                8 => "8",
                9 => "9",
                10 => "A",
                11 => "B",
                12 => "C",
                13 => "D",
                14 => "E",
                15 => "F"}
  [r,g,b].map do  |y|
    if y < 0
      "00"
    elsif y > 255
      "FF"
    else
      tens = y / 16
      units = y % 16
      "#{converter[tens]}#{converter[units]}"
    end
  end.join
end

# convert numbers to strings at end
p rgb(148, 0, 211)
p rgb(0, 0, -20)
p rgb(300, 255, 255)

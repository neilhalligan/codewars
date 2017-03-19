# Your task is to implement a function decodeMorse(morseCode), that would take
# the morse code as input and return a decoded human-readable string.

# For example:
# decodeMorse('.... . -.--   .--- ..- -.. .')
# #should return "HEY JUDE"
# The Morse code table is preloaded for you as a dictionary, feel free to use it.
# In CoffeeScript, C++, JavaScript, PHP, Python, Ruby and TypeScript, the table
# can be accessed like this: MORSE_CODE['.--'], in Java it is MorseCode.get('.--'),
# in C# it is MorseCode.Get('.--'), in Haskell the codes are in a Map String String
# and can be accessed like this: morseCodes ! ".--".

# def decodeMorse(morseCode)
#   #your brilliant code here
# morse_dict = Hash[
#   " " => "&",
#   "!" => "-.-.--",
#   "." => ".-.-.-",
#   "a" => ".-",
#   "b" => "-...",
#   "c" => "-.-.",
#   "d" => "-..",
#   "e" => ".",
#   "f" => "..-.",
#   "g" => "--.",
#   "h" => "....",
#   "i" => "..",
#   "j" => ".---",
#   "k" => "-.-",
#   "l" => ".-..",
#   "m" => "--",
#   "n" => "-.",
#   "o" => "---",
#   "p" => ".--.",
#   "q" => "--.-",
#   "r" => ".-.",
#   "s" => "...",
#   "t" => "-",
#   "u" => "..-",
#   "v" => "...-",
#   "w" => ".--",
#   "x" => "-..-",
#   "y" => "-.--",
#   "z" => "--..",
#   "1" => ".----",
#   "2" => "..---",
#   "3" => "...--",
#   "4" => "....-",
#   "5" => ".....",
#   "6" => "-....",
#   "7" => "--...",
#   "8" => "---..",
#   "9" => "----.",
#   "0" => "-----",
#   "SOS" => "...---...",
# ]
# morseCode.gsub!("   "," & ")
# morseCode.split(/\s{1}/).map { |elem| morse_dict.key(elem) }.join.strip.upcase
# end

def decodeMorse(morseCode)
  morseCode.strip.gsub(/[.-]*/) {|charCode| MORSE_CODE[charCode] }.gsub(/  ?([^\ ])/, '\1')
end
p decodeMorse('...---...')
# p MORSE_CODE['.--']

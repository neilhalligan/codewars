# Greed is a dice game played with five six-sided dice. Your mission, should you choose to accept it, is to score a throw according to these rules. You will always be given an array with five six-sided dice values.

#  Three 1's => 1000 points
#  Three 6's =>  600 points
#  Three 5's =>  500 points
#  Three 4's =>  400 points
#  Three 3's =>  300 points
#  Three 2's =>  200 points
#  One   1   =>  100 points
#  One   5   =>   50 point
# A single die can only be counted once in each roll. For example, a "5" can only count as part of a triplet (contributing to the 500 points) or as a single 50 points, but not both in the same roll.

# Example scoring

#  Throw       Score
#  ---------   ------------------
#  5 1 3 4 1   50 + 2 * 100 = 250
#  1 1 1 3 1   1000 + 100 = 1100
#  2 4 4 5 4   400 + 50 = 450


# def score( dice )
#   dice = dice.sort.join
#   sum = /([0-6])\1{2}/ =~ dice ? dice.slice!(/([0-6])\1{2}/ =~ dice, 3)[0].to_i * 100 : 0
#   sum = 1000 if sum == 100
#   sum += (dice.count("5")) * 50 + (dice.count("1") * 100)
# end

# def score( dice )
#   score = 0
#   (1..6).each do |i|
#     counter = dice.select { |n| n == i }
#     score += ( i == 1 ? 1000 : i * 100) if counter.size > 3
#     score += (counter.size % 3) * 100 if counter[0] == 1
#     score += (counter.size % 3) * 50 if counter[0] == 5
#   end
#   p score
# end
  SCORE_MAP = {
    1 => [0, 100, 200, 1000, 1100, 1200, 2000],
    2 => [0, 0, 0, 200, 200, 200, 400],
    3 => [0, 0, 0, 300, 300, 300, 600],
    4 => [0, 0, 0, 400, 400, 400, 800],
    5 => [0, 50, 100, 500, 550, 600, 1000],
    6 => [0, 0, 0, 600, 600, 600, 1200]
  }
def score( dice )
  (1..6).inject(0) do |score, die|
    score += SCORE_MAP[die][dice.count(die)]
  end
end
dicer = [1, 1, 1, 3, 1]
p score(dicer)

# Your task is to implement a function that calculates an election winner from a
# list of voter selections using an Instant Runoff Voting algorithm. If you haven't
# heard of IRV, here's a basic overview (slightly altered for this kata):

# Each voter selects several candidates in order of preference.
# The votes are tallied from the each voter's first choice.
# If the first-place candidate has more than half the total votes, they win.
# Otherwise, find the candidate who got the least votes and remove them from
# each person's voting list.
# In case of a tie for least, remove all of the tying candidates.
# In case of a complete tie between every candidate,
# return nil(Ruby)/None(Python)/undefined(JS).

# Start over.
# Continue until somebody has more than half the votes; they are the winner.
# Your function will be given a list of voter ballots; each ballot will be a
# list of candidates (symbols) in descending order of preference. You should
# return the symbol corresponding to the winning candidate. See the default
# test for an example!

def runoff(voters)
  ballot= Hash.new
  # populate the hash with 0's
  voters.each do |votes|
    votes.each do |v|
      ballot[v] = 0;
    end
  end
  while voters.size/2 >= ballot.values.max && ballot.size > 1
    # reset ballot totals to zero at beginning of each round
    ballot.each { |k,v| ballot[k] = 0 }
    # tally votes for this round
    voters.each do |vote|
      votee = vote.select { |x| ballot.include?(x)}.first
      ballot[votee] += 1
    end
    ballot = ballot.select { |k,v| v > ballot.values.min }
    return nil if ballot.empty?
  end
  ballot.select { |k,v| v == ballot.values.max }.keys[0]
end


voters = [[:dem, :ind, :rep],
          [:rep, :ind, :dem],
          [:ind, :dem, :rep],
          [:ind, :rep, :dem]]

voters2 = [[:d, :a, :e, :b, :c],
           [:c, :d, :d, :c, :a],
           [:e, :a, :c, :b, :d],
           [:e, :d, :a, :b, :c],
           [:e, :d, :a, :b, :c],
           [:d, :d, :a, :b, :c],
           [:a, :d, :a, :b, :c],
           [:b, :d, :a, :e, :c]]

p runoff(voters2)


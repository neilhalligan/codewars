def runoff(voters)
  quota = voters.length/2
  results = voters.map(&:first).reduce({}) { |t,v| t[v] = (t[v] || 0) + 1; t }
  most_votes, least_votes = results.values.max, results.values.min
  winners = results.select { |k,v| v == most_votes }.keys
  losers = results.select { |k,v| v == least_votes }.keys
  reduced_ballots = voters.map do |voter|
    voter.delete_if { |can| losers.include?(can) }
  end
  results.values.max > quota ? winners.first : runoff(reduced_ballots)
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



           # 3 e
           # 2 d
           # 1a, 1b, 1c

p runoff(voters2)

# this guy works
# def runoff(voters)
#   ballot= Hash.new
#   # populate the hash with 0's
#   voters.each do |votes|
#     votes.each do |v|
#       ballot[v] = 0;
#     end
#   end
#   while voters.size/2 >= ballot.values.max && ballot.size > 1
#     # reset ballot totals to zero at beginning of each round
#     ballot.each { |k,v| ballot[k] = 0 }
#     # tally votes for this round
#     voters.each do |vote|
#       votee = vote.select { |x| ballot.include?(x)}.first
#       ballot[votee] += 1
#     end
#     ballot = ballot.select { |k,v| v > ballot.values.min }
#     return nil if ballot.empty?
#   end
#   ballot.select { |k,v| v == ballot.values.max }.keys[0]
# end

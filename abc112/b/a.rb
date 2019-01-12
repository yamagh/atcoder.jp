# https://beta.atcoder.jp/contests/abc112/tasks/abc112_b
# B - Time Limit Exceeded

N,T = gets.split.map &:to_i
ct = $<.read.split(/\n/).map{|m|m.split.map &:to_i}
min = ct.select{|r|r[1]<=T}.min_by{|i|i[0]}
puts min == nil ? :TLE : min[0]


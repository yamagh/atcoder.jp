N=gets.to_i
l=gets.split.map(&:to_i).sort
cnt=0
N.times{cnt += [l.pop, l.pop].min}
puts cnt


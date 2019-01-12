N=gets.to_i
a=[]
N.times{a.push gets.to_i}
f=a.uniq.sort
m=f.map.with_index.to_h
a.each{|e|puts m[e]}


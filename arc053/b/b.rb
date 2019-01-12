S=gets.chomp.split('')
a=S.uniq.map{|c|S.count(c)}.sort
p a

odd =a.count{|c|c.odd?}
puts odd
even=a.count{|c|c.even?}
puts even


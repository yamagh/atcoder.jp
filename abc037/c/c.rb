#N,K=gets.split.map &:to_i
#a=gets.split.map &:to_i
#puts (0..N-K).map{|m|a[m,K]}.flatten.inject(:+)

#N,K=gets.split.map &:to_i
#a=gets.split.map &:to_i
#d=[(N/2).ceil,K].min
#r=a.map.with_index(1) do |v,i|
#  if i<K
#    v*i
#  elsif (a.size-K)<i
#    v*(a.size-i+1)
#  else
#    v*d
#  end
#end
#puts r.inject(:+)

N,K,*A=$<.read.split.map &:to_i
x=[(N/2).ceil+1,K].min
d=(1..N).map{|i| i<=x || N+1-x<i ? [N-i+1,i].min : [x,i].min}
puts A.map.with_index{|v,i|v*d[i]}.reduce(:+)

#def foo(n,max)
#  (1..n).map do |i|
#    if i<=max || n+1-max<i
#      [n-i+1,i].min
#    else
#      [max,i].min
#    end
#  end
#end
#p foo(10,2)


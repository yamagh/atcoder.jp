N,Q=gets.split.map &:to_i
a=Array.new(N,0)
Q.times do 
  l,r,t=gets.split.map &:to_i
  (l..r).each{|e|a[e-1]=t}
end
a.each{|e|puts e}


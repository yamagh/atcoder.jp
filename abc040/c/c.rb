#n=4
#a=[100, 150, 130, 120]

#n=4
#a=[100, 125, 80, 110]

#n=9
#a=[314, 159, 265, 358, 979, 323, 846, 264, 338]

n=gets.to_i
a=gets.split.map &:to_i

MAX=1_000_000_000
mm=Array.new(n+2,MAX)
mm[0]=0
(n-1).times do |i|
  mm[i+1] = [ mm[i+1], mm[i] + (a[i]-a[i+1]).abs ].min
  mm[i+2] = [ mm[i+2], mm[i] + (a[i]-a[i+2]).abs ].min if i<n-2
end
puts mm[n-1]


#N=gets.to_i
#s=[]
#N.times {s.push gets.chomp.split('')}
#s.transpose.each{|e| puts e.reverse*''}

N=gets.to_i
s=[]
N.times {s.push gets.chomp.split('')}
mx,my=s[0].size-1,N-1

for y in (0..my)
  puts [*0..mx].map{|x|s[mx-x][y]}*''
end

#for y in (0..N-1)
#  r=""
#  for x in (0..s[0].size-1)
#    r="#{r}#{s[y][s[0].size-1-x]}"
#  end
#  puts r
#end

#(N-1).downto(0) do |y|
#  a=[*0..s[0].size].map do |x|
#    s[y][x]
#  end
#  p a*''
#end


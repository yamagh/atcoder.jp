A,K=gets.split.map &:to_i
GOAL=2*(10**12)
n=A
c=0
loop do
  break if GOAL<=n
  n+=1+n*K
  c+=1
end
puts c

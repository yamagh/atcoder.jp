N=gets.to_i
A=gets.split.map(&:to_i)
B=A.push(0)

m = Array.new(N+1,0)

for i in 0..N
  a = (B[i] - B[i-1]).abs
  m[i] = m[i-1] + a
  p m
end


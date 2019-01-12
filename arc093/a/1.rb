N=gets.to_i
A=gets.split.map(&:to_i)

A.each.with_index(0) do |a,i|
  s,p = 0,0
  (A + [0]).map.with_index(0) do |m,k|
    next if i == k
    s+= (m-p).abs
    p = m
  end
  p s
end


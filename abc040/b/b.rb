n=gets.to_i
memo=[]
(1..n).each do |i|
  m=(n/i).to_i
  memo << (n - i*m) + (i-m).abs
end
puts memo.min


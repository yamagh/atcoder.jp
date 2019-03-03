A,B,K = gets.split.map(&:to_i)

m = [*1..100].reverse.map do |i|
  (A % i == 0 && B % i == 0) ? i : 0
end

p m.sort.reverse[K-1]

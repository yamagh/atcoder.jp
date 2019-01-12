N=gets.to_i
A=gets.split.map &:to_i

if A.uniq.size == 1 then
  puts 0
else
  avg=(A.inject(:+)/A.size.to_f).ceil
  puts A.map{|m|(m-avg)**2}.inject(:+)
end


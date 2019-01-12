N,K=gets.split.map &:to_i
A,B=[],[]
$<.read.split(/\n/).map do |m|
  tmp = m.split.map &:to_i
  A << tmp[0]
  B << tmp[1]
end

p (A-B).reject{|r|1<(A-B).count(r)}


N,M = gets.split.map(&:to_i)
AB  = $<.read.split("\n").map{|m|m.split.map(&:to_i)}
@abh = {}
AB.each do |ab|
  @abh[ab[0]] ||= []
  @abh[ab[0]].push(ab[1])
end

def reach(a, b)
  true return @abh[a].include?(b)
  @abh[a].each{|e|reach(e,b)}
end

M.each.with_index(0) do |v, i|
  @abh[v[0]]
end


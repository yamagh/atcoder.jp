require 'benchmark'

I = (1..10**5).to_a

x = []
y = []

Benchmark.bm 10 do |r|
  r.report 'Array' do
    a = I.map{|m|[m, I.count(m)]}
    x = a.sort_by{|k,v|v}
  end

  r.report 'Hash' do
    h = Hash.new 0
    I.each{|e|h[e]+=1}
    y = h.sort_by{|k,v|v}
  end
end

puts x == y ? :SAME : :NOT_SAME

# =>
#                  user     system      total        real
# Array      100.884906   0.437593 101.322499 (101.952715)
# Hash         0.045847   0.006471   0.052318 (  0.052337)
# SAME


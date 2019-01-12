H,W=gets.split.map &:to_i
a=[]
H.times{a<<gets.split.map(&:to_i)}
p a

h={}
a.each.with_index do |e,y|
  e.each.with_index do |f,x|
    i="#{y}#{x}"
    puts "Now:#{f} y:#{y} x:#{x}"
    h[i]||=["-1"]
    h[i]  << "#{y-1}#{x}" if f<a[y-1][x] && y!=0
    h[i]  << "#{y}#{x-1}" if f<a[y][x-1] && x!=0
    (h[i] << "#{y+1}#{x}" if f<a[y+1][x] )if y!=H-1
    (h[i] << "#{y}#{x+1}" if f<a[y][x+1] )if x!=W-1
  end
end
p h

dp=Array.new(H).map{Array.new(W,0)}




s=gets.split('')
t=gets.to_i
l=s.count('L')
r=s.count('R')
u=s.count('U')
d=s.count('D')
x,y=(l-r).abs,(u-d).abs
#puts "l:#{l} r:#{r} u:#{u} d:#{d} x:#{x} y:#{y}"
q=s.count('?')
if t==1
  puts x+y+q
else
  if 0 <= x+y-q
    puts x+y-q
  else
    puts (x+y-q).even? ? 0 : 1
  end
end

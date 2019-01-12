N,Q=gets.split.map(&:to_i)
S=[]

N.times do
  x,h,r=gets.split.map(&:to_i)
  S << {x:x, h:h, r:r, y:x+h, v:(r*r*3.14*h)/3}
end

Q.times do |t|
  a,b=gets.split.map(&:to_i)
  if a==b then
    puts 0
    next
  end

  puts "a:#{a} b:#{b}"
  r = S.map do |m|
    if (a<=m[:x] && m[:x]<b) && (a<m[:y] && m[:y]<=b)
      m[:v]
    elsif a<=m[:x] && m[:x]< b
      h=b-m[:x]
    elsif a< m[:y] && m[:y]<=b
      p m
    else
      0
    end
  end
  p r
end


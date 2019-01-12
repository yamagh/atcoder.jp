h={}
h[1]=[2,3,4]
h[2]=[1,4]
h[3]=[1,4]
h[4]=[1,2,3]

h.each do |k,v|
  puts "# #{v}"
  v.each do |n|
    p h[n]
  end
end


CITY_NUM,LOAD_NUM=5,4
l=[]
l << [1, 2, 2000]
l << [2, 3, 2004]
l << [3, 4, 1999]
l << [4, 5, 2001]

ll={}
ll[1]=[[2,2000]]
ll[2]=[[1,2000],[3,2004]]
ll[3]=[[2,2004],[4,1999]]
ll[4]=[[3,1999],[5,2001]]
ll[5]=[[4,2001]]

PEOPLE_NUM=3
p=[]
p << [1, 2000]
p << [1, 1999]
p << [3, 1995]

#CITY_NUM,LOAD_NUM=gets.split.map &:to_i
#l=[]
#LOAD_NUM.times{l << gets.split.map &:to_i}
#PEOPLE_NUM=gets.to_i
#p
#PEOPLE_NUM.times{p << gets.split.map &:to_i}

r=Array.new(PEOPLE_NUM).map{Array.new}
p.each.with_index do |pp,idx|
  city_n = pp[0]
  r[idx] << city_n unless r[idx].include?(city_n)
  ll[city_n]
end
r.each{|i|puts i.size}


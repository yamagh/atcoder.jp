# https://beta.atcoder.jp/contests/atc001/tasks/dfs_a

#require 'profile'
H,W = gets.split.map &:to_i
map = $<.read.split(/\n/).map{|n|"##{n}#".split('')}

# Ban-pei
t=('#'*(W+2)).split('')
map.push(t).unshift(t)
#map.each{|a|puts a*''}

def get_xy(map, char)
  i=(map*'').index(char)
  return [i % (W+2), i / (W+2)]
end

def resolve(map, start, goal)
  stack = [start]
  while true
    #puts ''; map.each{|j|puts j*''}
    return :Yes if goal?(map, goal[0], goal[1])
    return :No  if stack.size == 0
    x,y = stack.pop
    #puts "x,y = #{x},#{y}"
    map[y][x] = '@'
    s = get_blank map, x, y
    stack.concat(s)
  end
end

def get_blank(map, x, y)
  s  = []
  s << [x  , y-1] if map[y-1][x  ] == '.'
  s << [x-1, y  ] if map[y  ][x-1] == '.'
  s << [x+1, y  ] if map[y  ][x+1] == '.'
  s << [x  , y+1] if map[y+1][x  ] == '.'
  return s
end

def goal?(map, x, y)
  return true if map[y-1][x  ]=='@'
  return true if map[y  ][x-1]=='@'
  return true if map[y+1][x  ]=='@'
  return true if map[y  ][x+1]=='@'
  false
end

start = get_xy(map, 's')
goal  = get_xy(map, 'g')

puts resolve(map, start, goal)


A,B=gets.split.map(&:to_i)
puts B/A + (B%A==0 ? 0 : 1)

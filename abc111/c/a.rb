N = gets.to_i
V = gets.split.map &:to_i

ve, vo = {}, {}
V.each.with_index(1) do |v, i|
  if i.even? 
    ve[v] = 0 if ve[v].nil?
    ve[v] += 1
  else
    vo[v] = 0 if vo[v].nil?
    vo[v] += 1
  end
end

ve_srt = ve.sort_by{|k,v|v}.reverse
vo_srt = vo.sort_by{|k,v|v}.reverse

ve_max = ve_srt[0][1]
vo_max = vo_srt[0][1]

if ve == vo
  puts N/2

elsif ve.size == 1 && vo.size == 1
  puts 0

elsif ve.size == 1 && vo.size != 1
  puts ve_srt[0][0] == vo_srt[0][0] ? vo_max : N/2-vo_max

elsif ve.size != 1 && vo.size == 1
  puts ve_srt[0][0] == vo_srt[0][0] ? ve_max : N/2-ve_max

else
  puts N   - ve_max - vo_max
end

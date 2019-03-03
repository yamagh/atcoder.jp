m = gets.to_i
puts '00'               if m< 100
puts "%02i" % (m/100 )  if 100  <=m && m<=5000
puts (m/1000)+50        if 6000 <=m && m<=30000
puts ((m/1000)-30)/5+80 if 35000<=m && m<=70000
puts 89                 if 70000< m

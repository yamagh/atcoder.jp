N=gets.to_i
a=gets.split
cnt=N

if N==1
  puts 1
  exit
end

for i in 0..N-2
  for k in i..N-2
    if a[k]<a[k+1]
      cnt+=1
    else
      break
    end
  end
end

puts cnt


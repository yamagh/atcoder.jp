n=gets.chomp.to_i
arr=Array.new(n){Array.new}
(n-1).times do
	a,b=gets.chomp.split(' ').map(&:to_i)
	arr[a-1] << b-1
	arr[b-1] << a-1
end
p arr
 
def calc(arr,n,p)
	tmp=[]
	for c in arr[n]
    puts "arr[n]:#{arr[n]} c:#{c} p:#{p}"
		if c!=p
			tmp.push calc(arr,c,n)
		end
	end
	b=1
	w=1
	for t in tmp
		b*=(t[1]%1_000_000_007)
		w*=((t[0]+t[1])%1_000_000_007)
	end
	p([n,[b,w]])
	return [b,w]
end
 
b,w= calc(arr,0,0)
puts "#{(b+w)%1_000_000_007}"


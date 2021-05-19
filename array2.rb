array = [9, 20, 16, 6, 5, 9, 21, 8, 14, 5, 12, 21, 9]
i=0
max=0
a=[]
while(i!=array.length-1)
	if array[i]-array[i+1]>max
		max= array[i]-array[i+1]
		a[0],a[1] = array[i],array[i+1]
	end
	i+=1
end
puts "Two numbers with biggest difference are #{a[0]} and #{a[1]}. Their difference is #{max}."

array = [ 3, 5, 2, 8, 23, 4, 7, 12 ]
point = 5
a={}
b=[]
array.each do |i| 
  a[i] = (point - i).abs 
  b << (point - i).abs
end
b.sort!
c=[]
b.each do |i|
  c << a.key(i)
  a[a.key(i)]=999
end
p c
    


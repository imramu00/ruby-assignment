array = [ 3, 5, 2, 8, 23, 4, 7, 12 ]
point = 5
a={}
b=[]
for i in array
    a[i] = (point - i).abs
    b << (point - i).abs
end
b=b.sort
c=[]
for i in b   
    c << a.key(i)
    a[a.key(i)]=99999
end
p c
    


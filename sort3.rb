array = [ [ 'Ajay', 10000, 400 ], [' Vijay', 6000, 300 ], [ 'Ram' , 7000, 200 ], [ 'Shyam', 7700, 350 ] ]
a=[]
b=[]
for i in array 
    avg = (i[1]+i[2])/2
    a << avg
end
a=a.sort
for i in a 
    for j in array
        avg = (j[1]+j[2])/2
        if avg == i   
            b << j[0]
            break
        end 
    end
end

p b
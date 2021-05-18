coordinates_array = [ [2,1], [2, 2], [3,2], [1,3] ]
point = [ 2, 2 ]
a=[]
b=[]

for i in coordinates_array
    a << Math.sqrt(((point[0]-i[0].abs)**2)+((point[1]-i[1].abs)**2)).round
end
a = a.sort
for j in a
    for i in coordinates_array
        if j == Math.sqrt(((point[0]-i[0].abs)**2)+((point[1]-i[1].abs)**2)).round
            b << [i[0],i[1]]
            break
        end
    end
end
p b

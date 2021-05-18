def area(array)
    a =[]
    b=[]
    for i in array
        ans = i[0] * i[1]
        a << ans
    end
    a = a.sort.reverse
    for i in a 
        for j in array 
            if (j[0]*j[1]) == i  
                b << [j[0],j[1]]
                break 
            end
        end
    end
    return b

end

array = [  [6, 4] , [8, 2] , [7, 3] , [4, 4] , [8, 4] , [9, 1] , [7, 2] , [11, 1]  ]
answer = area(array)
p answer
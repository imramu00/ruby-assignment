d = [ '06-09-2016', '08-07-2016', '07-10-2017' ]
j=0
for i in d 
    d[j]=i.split("-")
    j+=1
end
p d
for i in (1..2)
    for j in (2..3)
        if d[i][2].to_i > d[j][2].to_i
            i,j = j,i 
        end 
    end
end

p d
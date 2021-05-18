puts "Enter a string"
input=gets.chomp
a=input.split()
b=[]
for i in a 
    if i==i.reverse
        b << i 
    end
end
puts b.sort{|a,b| b.length <=> a.length}[0]
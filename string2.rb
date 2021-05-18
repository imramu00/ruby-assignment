puts "Enter a string"
input = gets.chomp
hash_table={}
a=[]
b=[]

input_array=input.downcase.tr("."," ").split(" ")
input_array.each {|i| hash_table[i]=input_array.count(i) }
hash_table.each { |k,v| a << v }
a = a.sort.reverse
k=0
3.times do
    temp1 = hash_table.key(a[k]).to_s 
    temp = a[k].to_s
    temp2 = "("+temp+")"
    b << (temp1+temp2)
    hash_table.each do |k,v|
        if k == temp1 
            hash_table[k] = 99999
            break
        end
    end
    a[k]=-1
    k+=1
end
puts b.join(",")

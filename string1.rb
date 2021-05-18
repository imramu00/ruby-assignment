puts "Enter a String"
input = gets.chomp
puts input.split().map{ |i| i.reverse }.join(" ")
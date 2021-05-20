class Str
  attr_accessor :inp

  def initialise(inp)
    @inp = inp
  end

  def reverse(inp)
    inp.split().map{ |i| i.reverse }.join(" ")
  end
end

puts "Enter a String"
input = gets.chomp
puts Str.new.reverse(input)

class Array
  attr_accessor :inp

  def initialise(inp)
    @inp = input
  end

  def count_unique(inp)
    inp.downcase.split(" ").uniq.count
  end
end

puts "Enter a string"
input = "This is a cat This cat is big I like cat"
puts Array.new.count_unique(input)

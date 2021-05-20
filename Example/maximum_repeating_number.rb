class Arr
  attr_accessor :array

  def initialise(array)
    @array = array
  end

  def find_max(array)
    a = array.max_by { |i| array.count(i) }
  end

  def find_count(array)
    a = find_max(array)
    puts ("Number #{a} repeats #{array.count(a)} times")
  end
end

array=[9, 5, 8, 6, 5, 4, 27, 6, 32, 5, 2, 11, 27, 1]
puts Arr.new.find_count(array)

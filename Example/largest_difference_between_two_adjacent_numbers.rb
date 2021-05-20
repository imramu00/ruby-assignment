class Arr
  attr_accessor :array

  def initialise(array)
    @array = array
  end

  def diff(array)
    i = 0
    max = 0
    a = []
    while(i != array.length-1)
      if array[i] - array[i+1] > max
        max = array[i] - array[i+1]
        a[0], a[1], a[2] = array[i], array[i+1], max
      end
      i += 1
    end
    a
  end
end

array = [9, 20, 16, 6, 5, 9, 21, 8, 14, 5, 12, 21, 9]
a = Arr.new.diff(array)
puts "Two numbers with biggest difference are #{a[0]} and #{a[1]}. Their difference is #{a[2]}."

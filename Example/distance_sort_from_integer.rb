class Arr
  attr_accessor :array, :point

  def initialise(array,point)
    @array = array
    @point = point
  end

  def nearest_sort(array,point)
    a = {}
    b = []
    c = []
    array.each do |i|
      a[i] = (point - i).abs
      b << (point - i).abs
    end
    b.sort!
    b.each do |i|
      c << a.key(i)
      a[a.key(i)] = 999
    end
    c
  end
end

array = [3, 5, 2, 8, 23, 4, 7, 12]
point = 5
p Arr.new.nearest_sort(array,point)

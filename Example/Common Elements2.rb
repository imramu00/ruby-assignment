class Arr
  attr_accessor :array1, :array2

  def initialise(array1,array2)
    @array1 = array1
    @array2 = array2
  end

  def common_ele(array1,array2)
    array1 & array2
  end
end

a = [2, 4, 5, 7, 8, 10, 12]
b = [1, 2, 3, 6, 12]
p Arr.new.common_ele(a,b)

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


a =  [2, 5, 3, 1, 6, 8, 9]
b = [4, 2, 7, 6, 10]
p Arr.new.common_ele(a,b)

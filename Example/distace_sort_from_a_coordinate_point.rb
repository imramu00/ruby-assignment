class Arr
  attr_accessor :array, :point

  def initialise(array,point)
    @array = array
    @point = point
  end

  def array_sort(array,point)
    array.sort_by! { |coordinate|
      Math.sqrt(((point[0] - coordinate[0])**2)+((point[1] - coordinate[1])**2))
    }
  end
end

coordinates_array = [[2,1],[2, 2],[3,2],[1,3]]
point = [2,2]
p Arr.new.array_sort(coordinates_array,point)

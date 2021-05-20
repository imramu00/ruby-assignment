class Sor
  attr_accessor :array

  def initialise(array)
    @array = array
  end

  def area_sort(array)
    array.sort_by! { |block|
      block[0]*block[1]
      -(block[0]*block[1])
    }
    array
  end
end

array = [[6, 4] ,[8, 2],[7, 3], [4, 4],[8, 4],[9, 1],[7, 2],[11, 1] ]
p Sor.new.area_sort(array)

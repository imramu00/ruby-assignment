class Sort
  attr_accessor :array

  def initialise(array)
    @array = array
  end

  def sort_avg(array)
    array.sort_by!{ |block|
      block[1]/block[2]
    }
  end

  def print_sort(array)
    sorted_array = sort_avg(array)
    sorted_array.each {|ele| print ele[0]+" "}
  end
end

array = [ [ 'Ajay', 10000, 400 ], [' Vijay', 6000, 300 ], [ 'Ram' , 7000, 200 ], [ 'Shyam', 7700, 350 ] ]
Sort.new.print_sort(array)

class Sort
  attr_accessor :array

  def initialise(array)
    @array = array
  end

  def sort_area(array)
    array.sort_by{|j| j[:width]*j[:height]}.reverse!
  end
end

array = [{:width=>3,:height=>2},{:width=>1,:height=>1},{:width=>1,:height=>2}]
p Sort.new.sort_area(array)

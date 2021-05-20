require 'date'

class Sort
  attr_accessor :array

  def initialise(array)
    @array = array
  end

  def sort_date(array)
    array.sort_by! { |blk|
      Date.parse(blk)
    }
  end
end

array = [ '08-07-2016', '07-10-2017','06-09-2016' ]
p Sort.new.sort_date(array)

class Str
  attr_accessor :inp

  def initialise(inp)
    @inp = inp
  end

  def inp_count(inp)
    arr = inp.split(/\s/i)
    occurances = arr.inject({}) { |result, value|
      result[value] = arr.count(value)
      result
    }
  end

  def inp_sort(inp)
    inp_count(inp).sort_by { |occurance|
      -occurance[1]
    }[0..2]
  end
end

input = "this is a cat. this is rat. that is a dog."
p Str.new.inp_sort(input)

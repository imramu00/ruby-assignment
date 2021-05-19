input = "this is a cat. this is rat. that is a dog."
arr = input.split(/\s/i)
occurances = arr.inject({}) { |result, value|
  result[value] = arr.count(value)
  result
}

p occurances.sort_by { |occurance|
  -occurance[1]
}[0..2]

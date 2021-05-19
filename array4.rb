coordinates_array = [ [2,1], [2, 2], [3,2], [1,3] ]
point = [ 2, 2 ]
p coordinates_array.sort_by! { |coordinate|
  Math.sqrt(((point[0]-coordinate[0])**2)+((point[1]-coordinate[1])**2))
}


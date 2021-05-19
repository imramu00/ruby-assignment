def area(array)
  array.sort_by! { |block|
    block[0]*block[1]
    -(block[0]*block[1])
  }
  array
end

array = [  [6, 4] , [8, 2] , [7, 3] , [4, 4] , [8, 4] , [9, 1] , [7, 2] , [11, 1]  ]
answer = area(array)
p answer

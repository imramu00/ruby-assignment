array = [ [ 'Ajay', 10000, 400 ], [' Vijay', 6000, 300 ], [ 'Ram' , 7000, 200 ], [ 'Shyam', 7700, 350 ] ]
array.sort_by!{ |block|
  block[1]/block[2]
}
array.each {|ele| print ele[0]+" "}

def print_max(array)
  a = array.max_by { |i| array.count(i) }
  puts ("Number #{a} repeats #{array.count(a)} times")
end

array=[9, 5, 8, 6, 5, 4, 27, 6, 32, 5, 2, 11, 27, 1]
print_max(array)

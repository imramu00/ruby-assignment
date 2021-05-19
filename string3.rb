puts "Enter a string"
input = "mom and dad enjoyed the rotor ride"
arr = input.split
arr.select! { |ele| ele.reverse == ele }
p arr.sort_by { |ele|
  ele.length
}.reverse[0]

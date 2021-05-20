class Strin
  attr_accessor :inp

  def initialise(inp)
    @inp = inp
  end

  def palindrome(inp)
    arr = inp.split
    arr.select! { |ele| ele.reverse == ele }
  end

  def palindrome_sort(inp)
    palindrome(inp).sort_by { |ele|
      ele.length
    }.reverse[0]
  end
end

input = "mom and dad enjoyed the rotor ride"
p Strin.new.palindrome_sort(input)

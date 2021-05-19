array = [{:width=>3,:height=>2},{:width=>1,:height=>1},{:width=>1,:height=>2}]
p array.sort_by{|j| j[:width]*j[:height]}.reverse!

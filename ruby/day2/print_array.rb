a = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16]

# Using each
(0..3).each{|i| puts "#{a[(4*i)..(4*i+3)]}"}

# Using each_slice
a.each_slice(4){|x| puts "#{x}"}
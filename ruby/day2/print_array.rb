a = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16]

for i in (0..3)
	puts "#{a[(4*i)..(4*i+3)]}"
end

a.each_slice(4){|x| puts "#{x}"}
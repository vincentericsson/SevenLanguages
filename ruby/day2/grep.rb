
def grep(filename, exp)
	File.foreach(filename){|x| puts x if x.include? exp}
end

grep('tree_init.rb', 'node')
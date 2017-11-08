class Tree
	attr_accessor :children, :node_name
	
#	def initialize(name, children=[])
#		@children = children
#		@node_name = name
#	end

	def initialize(name, children=[])
		@node_name = name
		@children = children.map{|key, val| Tree.new(key, val)}
	end
	
	def visit_all(&block)
		visit &block
		children.each {|c| c.visit_all &block}
	end
	
	def visit(&block)
		block.call self
	end
end

#ruby_tree = Tree.new('Ruby', [Tree.new('Reia'), Tree.new('MacRuby')])
ruby_tree = Tree.new('Ruby', {'grandpa' => {'dad' => {'child 1' => {}, 'child 2' => {}}, 'uncle' => {'child 3' => {}, 'child 4' => {}}}})

ruby_tree.visit_all{|x| puts x.node_name}
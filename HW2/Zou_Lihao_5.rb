class CartesianProduct
 include Enumerable
 # your code here
 attr_accessor :members

 def initialize arr1,arr2
 	@members = []
 	arr1.each do |e1|
 		arr2.each do |e2|
 				@members<<[e1,e2]
 		end
 	end
 end

 def each &block
 	@members.each do |member|
 		block.call(member)
 	end
 end
end

#Examples of use
c = CartesianProduct.new([:a,:b,:c], [4,5])
c.each { |elt| puts elt.inspect }
# [:a, 4]
# [:a, 5]
# [:b, 4]
# [:b, 5]

c = CartesianProduct.new([:a,:b], [])
c.each { |elt| puts elt.inspect }
# (nothing printed since Cartesian product
# of anything with an empty collection is empty)
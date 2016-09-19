class Array
	def palindrome?
	 # your code here
	 return self==self.reverse
	end
end

class Hash
	def palindrome?
	 # your code here
	 return nil
	end
end

puts [1,2,3,2,4].palindrome?   # => false
puts [1,["a","b"],3,["a","b"],1].palindrome? 	# => true
puts Hash["name"=>"John","age"=>29].palindrome?   # => true
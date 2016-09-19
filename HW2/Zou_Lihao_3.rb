class String
	def palindrome?
	 # your code here
	 str = self.downcase.gsub(/\W/,'')
	 return str==str.reverse
	end
end

puts "Lol".palindrome?
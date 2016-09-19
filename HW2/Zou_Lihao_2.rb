class Numeric
  @@currencies = {'yen' => 0.013, 'euro' => 1.292, 'rupee' => 0.019}
  def method_missing(method_id)
   	singular_currency = method_id.to_s.gsub( /s$/, '')
   	if @@currencies.has_key?(singular_currency)
     	self * @@currencies[singular_currency]
   	elsif singular_currency=='dollar'
      self
    else
     	super
   	end
  end

  def in(currency)
    singular_currency = currency.to_s.gsub(/s$/, '')
    self / @@currencies[singular_currency]
  end
end

puts 5.dollars.in(:euros)
puts 10.euros.in(:yen)
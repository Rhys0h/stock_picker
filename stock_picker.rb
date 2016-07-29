def stock_picker(array)
	profit = 0
	buyDay = nil
	sellDay = nil
	array.each { |i| 
		array.each { |x| 
			unless array.index(i) < array.index(x)
				if i - x > profit
					profit = i - x
					buyDay = array.index(x)
					sellDay = array.index(i)
				end
			end
		}
	}
	puts "Buy on day #{buyDay.to_s} and sell on day #{sellDay.to_s} for $#{profit} profit."
end

stock_picker([0, 1, 50])
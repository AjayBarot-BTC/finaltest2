toys_and_prices = { car: 500, bike:300, bat:900, ball:100, stump: 200 }; 
k = "1000".to_i
puts "money you have #{k}$"

puts "The toys and prices are: "
toys_and_prices.each do |key,value| 
	puts "#{key} = #{value}"
end
sum = 0
array = []
toys_and_prices.each_value {|value| array << value}
i = 0
j = 0
while i < array.length-1 
	while j < array.length-1 
		if (array[j] > array[j+1])
			temp = array[j]
			array[j] = array[j+1]
			array[j+1] = temp
		end
		j = j+ 1
	end
	i = i + 1
end
i=0
while sum <= k
	if i >= array.length		
		break
	end
	sum = sum + array[i]
	if (sum <= k)	
		i = i + 1
	end
end
puts "\n Purchased toys : #{i} \n"
#toys_and_prices.each do |key,i| 
#puts "#{key} = #{i}"
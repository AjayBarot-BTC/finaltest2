
=begin 
If we list all the natural numbers below 10 that are multiples of 3 or 5, we get 3, 5, 6 and 9.The sum of these multiples is 23. Find the sum of all the multiples of 3 or 5 below N in rubydef multiples(x) DOC
=end
def multiples(x)
	sum=0
	(1..x-1).each do |n|
		if ( n % 3 == 0 ) or ( n % 5 == 0 )
			sum += n
		end
	end
	return sum
end
require './modulefile'
Reuse.promting()
n = gets.chomp()
puts multiples(n.to_i)
puts "\nSum of numbers which is multiplies of 3 and 5 below #{n} is : #{multiples(n.to_i)}\n\n"
require './modulefile'
Reuse.promting()
n = gets.chomp()
i = 3
j = 5
k = 1
	while n.to_i >= k
	ans1 = i * k 
	#puts "multiple of #{i} and #{k} is #{ans1}"
	ans2 = j * k
	puts
	#puts "multiple of #{j} and #{k} is #{ans2}"
	#puts
	k = k + 1
	answer = ans1 + ans2
	puts "Final summation is #{answer}" 
	end
	
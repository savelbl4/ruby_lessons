loop do
	puts "Получена команда: "
	u = gets.strip
	if u == "r"
		puts user = :rock
	elsif u == "s"
		puts user = :scissors
	elsif u == "p"
		puts user = :paper
	else
		puts "nope"
		exit
	end
	get = [:rock, :scissors, :paper]	#камень, ножницы, бумага
	puts comp = get[rand(0..2)]
	if user == comp
		puts "Nobody wins"
	elsif user == :paper && comp == :scissors
		puts "you lose"
		break
	elsif user == :rock && comp == :paper
		puts "you lose"
		break
	elsif user == :scissors && comp == :rock
		puts "you lose"
		break
	else
		puts "you win"
		break
	end
end
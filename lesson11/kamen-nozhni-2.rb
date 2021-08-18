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
	matrix = [
		[:rock, :paper, :you_lose],
		[:rock, :scissors, :yuo_win],
		[:paper, :rock, :yuo_win],
		[:paper, :scissors, :you_lose],
		[:scissors, :rock, :you_lose],
		[:scissors, :paper, :yuo_win],
		[:rock, :rock, :draw],
		[:scissors, :scissors, :draw],
		[:paper, :paper, :draw]
	]
	matrix.each do |item|
		if item[0] == user && item[1] == comp
			if item[2] == :you_lose
				puts "you lose"
				exit
			elsif item[2] == :yuo_win
				puts "you win"
				exit
			elsif item[2] == :draw
				puts "draw"
			end
		end
	end
end
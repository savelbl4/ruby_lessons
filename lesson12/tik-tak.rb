@hh = {
	:str1 => {:on => '_', 2 => '|', :tw => '_', 4 => '|', :th => '_'},
	:str2 => {:on => '_', 2 => '|', :tw => '_', 4 => '|', :th => '_'},
	:str3 => {:on => '_', 2 => '|', :tw => '_', 4 => '|', :th => '_'}
}
def you_loss
	puts 'You loss!'
	output
	exit
end

def you_win
	puts 'You win!'
	output
	exit
end

def output
	@hh.each_value do |value|
		value.each_value do |value|
			print value
		end
		print "\n"
	end
end

def chek_draw
	if @hh[:str1][:on] != '_'
		if @hh[:str1][:tw] != '_'
			if @hh[:str1][:th] != '_'
				if @hh[:str2][:on] != '_'
					if @hh[:str2][:tw] != '_'
						if @hh[:str2][:th] != '_'
							if @hh[:str3][:on] != '_'
								if @hh[:str3][:tw] != '_'
									if @hh[:str3][:th] != '_'
										puts 'Draw!'
										output
										exit
									end
								end
							end
						end
					end
				end
			end
		end
	end
end

def reply_compa
	if @hh[:str2][:tw] == @hh[:str3][:th] && @hh[:str1][:on] == '_' && @hh[:str2][:tw] != '_'
		@hh[:str1][:on] = 'o'
		return
	end
	if @hh[:str1][:tw] == @hh[:str1][:th] && @hh[:str1][:on] == '_' && @hh[:str1][:tw] != '_'
		@hh[:str1][:on] = 'o'
		return
	end
	if @hh[:str2][:on] == @hh[:str3][:on] && @hh[:str1][:on] == '_' && @hh[:str2][:on] != '_'
		@hh[:str1][:on] = 'o'
		return
	end

	if @hh[:str1][:on] == @hh[:str1][:th] && @hh[:str1][:tw] == '_' && @hh[:str1][:on] != '_'
		@hh[:str1][:tw] = 'o'
		return
	end
	if @hh[:str2][:tw] == @hh[:str3][:tw] && @hh[:str1][:tw] == '_' && @hh[:str2][:tw] != '_'
		@hh[:str1][:tw] = 'o'
		return
	end

	if @hh[:str1][:on] == @hh[:str1][:tw] && @hh[:str1][:th] == '_' && @hh[:str1][:on] != '_'
		@hh[:str1][:th] = 'o'
		return
	end
	if @hh[:str2][:tw] == @hh[:str3][:on] && @hh[:str1][:th] == '_' && @hh[:str2][:tw] != '_'
		@hh[:str1][:th] = 'o'
		return
	end
	if @hh[:str2][:th] == @hh[:str3][:th] && @hh[:str1][:th] == '_' && @hh[:str2][:th] != '_'
		@hh[:str1][:th] = 'o'
		return
	end

	if @hh[:str1][:on] == @hh[:str3][:on] && @hh[:str2][:on] == '_' && @hh[:str1][:on] != '_'
		@hh[:str2][:on] = 'o'
		return
	end
	if @hh[:str2][:tw] == @hh[:str2][:th] && @hh[:str2][:on] == '_' && @hh[:str2][:tw] != '_'
		@hh[:str2][:on] = 'o'
		return
	end

	if @hh[:str2][:on] == @hh[:str2][:th] && @hh[:str2][:tw] == '_' && @hh[:str2][:on] != '_'
		@hh[:str2][:tw] = 'o'
		return
	end
	if @hh[:str1][:tw] == @hh[:str3][:tw] && @hh[:str2][:tw] == '_' && @hh[:str1][:tw] != '_'
		@hh[:str2][:tw] = 'o'
		return
	end
	if @hh[:str1][:on] == @hh[:str3][:th] && @hh[:str2][:tw] == '_' && @hh[:str1][:on] != '_'
		@hh[:str2][:tw] = 'o'
		return
	end
	if @hh[:str3][:on] == @hh[:str1][:th] && @hh[:str2][:tw] == '_' && @hh[:str3][:on] != '_'
		@hh[:str2][:tw] = 'o'
		return
	end

	if @hh[:str2][:on] == @hh[:str2][:tw] && @hh[:str2][:th] == '_' && @hh[:str2][:on] != '_'
		@hh[:str2][:th] = 'o'
		return
	end
	if @hh[:str1][:th] == @hh[:str3][:th] && @hh[:str2][:th] == '_' && @hh[:str1][:th] != '_'
		@hh[:str2][:th] = 'o'
		return
	end

	if @hh[:str3][:tw] == @hh[:str3][:th] && @hh[:str3][:on] == '_' && @hh[:str3][:tw] != '_'
		@hh[:str3][:on] = 'o'
		return
	end
	if @hh[:str1][:on] == @hh[:str2][:on] && @hh[:str3][:on] == '_' && @hh[:str1][:on] != '_'
		@hh[:str3][:on] = 'o'
		return
	end
	if @hh[:str2][:tw] == @hh[:str1][:th] && @hh[:str3][:on] == '_' && @hh[:str2][:tw] != '_'
		@hh[:str3][:on] = 'o'
		return
	end

	if @hh[:str3][:on] == @hh[:str3][:th] && @hh[:str3][:tw] == '_' && @hh[:str3][:on] != '_'
		@hh[:str3][:tw] = 'o'
		return
	end
	if @hh[:str2][:tw] == @hh[:str1][:tw] && @hh[:str3][:tw] == '_' && @hh[:str2][:tw] != '_'
		@hh[:str3][:tw] = 'o'
		return
	end

	if @hh[:str3][:on] == @hh[:str3][:tw] && @hh[:str3][:th] == '_' && @hh[:str3][:on] != '_'
		@hh[:str3][:th] = 'o'
		return
	end
	if @hh[:str1][:on] == @hh[:str2][:tw] && @hh[:str3][:th] == '_' && @hh[:str1][:on] != '_'
		@hh[:str3][:th] = 'o'
		return
	end
	if @hh[:str1][:th] == @hh[:str2][:th] && @hh[:str3][:th] == '_' && @hh[:str1][:th] != '_'
		@hh[:str3][:th] = 'o'
		return
	end
	loop do
		x = rand(0..2)
		x = :on if x == 0
		x = :tw if x == 1
		x = :th if x == 2

		y = rand(0..2)
		y = :str1 if y == 0
		y = :str2 if y == 1
		y = :str3 if y == 2

		if @hh[y][x] != 'o' && @hh[y][x] != 'x'
			@hh[y][x] = 'o'
			return
		end
	end
end

def reply_usera
	print 'Enter string number: '
	y = gets.chomp.to_s
	y = :str1 if y == '1'
	y = :str2 if y == '2'
	y = :str3 if y == '3'

	print 'Enter column number: '
	x = gets.chomp.to_s
	x = :on if x == '1'
	x = :tw if x == '2'
	x = :th if x == '3'

	@hh[y][x] = 'x' if @hh[y][x] == '_'
end

def user_win
	you_win if @hh[:str1][:on] == 'x' && @hh[:str2][:on] == 'x' && @hh[:str3][:on] == 'x'
	you_win if @hh[:str1][:tw] == 'x' && @hh[:str2][:tw] == 'x' && @hh[:str3][:tw] == 'x'
	you_win if @hh[:str1][:th] == 'x' && @hh[:str2][:th] == 'x' && @hh[:str3][:th] == 'x'
	you_win if @hh[:str1][:on] == 'x' && @hh[:str1][:tw] == 'x' && @hh[:str1][:th] == 'x'
	you_win if @hh[:str2][:on] == 'x' && @hh[:str2][:tw] == 'x' && @hh[:str2][:th] == 'x'
	you_win if @hh[:str3][:on] == 'x' && @hh[:str3][:tw] == 'x' && @hh[:str3][:th] == 'x'
	you_win if @hh[:str1][:on] == 'x' && @hh[:str2][:tw] == 'x' && @hh[:str3][:th] == 'x'
	you_win if @hh[:str3][:on] == 'x' && @hh[:str2][:tw] == 'x' && @hh[:str1][:th] == 'x'
end
def comp_win
	you_loss if @hh[:str1][:on] == 'o' && @hh[:str2][:on] == 'o' && @hh[:str3][:on] == 'o'
	you_loss if @hh[:str1][:tw] == 'o' && @hh[:str2][:tw] == 'o' && @hh[:str3][:tw] == 'o'
	you_loss if @hh[:str1][:th] == 'o' && @hh[:str2][:th] == 'o' && @hh[:str3][:th] == 'o'
	you_loss if @hh[:str1][:on] == 'o' && @hh[:str1][:tw] == 'o' && @hh[:str1][:th] == 'o'
	you_loss if @hh[:str2][:on] == 'o' && @hh[:str2][:tw] == 'o' && @hh[:str2][:th] == 'o'
	you_loss if @hh[:str3][:on] == 'o' && @hh[:str3][:tw] == 'o' && @hh[:str3][:th] == 'o'
	you_loss if @hh[:str1][:on] == 'o' && @hh[:str2][:tw] == 'o' && @hh[:str3][:th] == 'o'
	you_loss if @hh[:str3][:on] == 'o' && @hh[:str2][:tw] == 'o' && @hh[:str1][:th] == 'o'
end

loop {
	output
	reply_usera
	user_win
	chek_draw
	reply_compa
	comp_win
}
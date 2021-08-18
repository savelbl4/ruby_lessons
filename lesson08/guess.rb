x = rand(1..100)

print "Я загадал число. Какое?\n"

t = 10

1.upto(t) do |xx|

	print "попытка #{xx}, в запасе #{t - xx} попыток: "

	y = gets.to_i

	if y == x
		print "Угадал!\n"
		exit
	elsif y < x
		print "Нет, больше\n"

	elsif y > x
		print "Нет, меньше\n"

	end

end
# puts "Я загадал #{x}"
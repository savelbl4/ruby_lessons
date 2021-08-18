arr = []
a = ""
while a != "Stop"
	print "введите ваш любимый цвет, или 'Stop' для выхода: "
	a = gets.chomp.capitalize
	if a != "Stop"
		arr << a
	else
		puts "Ваши любимые цвета:"
		puts arr.reverse.uniq
	end
end
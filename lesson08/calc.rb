# калькулятор
print "Введите первое число: "
numerator = gets.to_f
print "Введите второе число: "
denominator = gets.to_f
print "Введите желаемое действие (* / - +): "
action = gets.strip
# if denominator == 0
# if action == "/" && denominator != 0
# 	print "Ответ: #{numerator.to_f / denominator.to_f}\n"
# else
# 	print "На ноль делить нельзя!\n"
# end

if action == "+"
	print "Ответ: #{numerator + denominator}\n"
	exit
elsif action == "-"
	print "Ответ: #{numerator - denominator}\n"
	exit
elsif action == "*"
	print "Ответ: #{numerator * denominator}\n"
	exit
elsif action == "/"
	if denominator != 0
		print "Ответ: #{numerator / denominator}\n"
		exit
	else
		print "На ноль делить нельзя!\n"
		exit
	end
end
# encoding: utf-8

print "Какую сумму будем откладывать в месяц: "
x = gets.to_f

print "Сколько лет: "
y = gets.to_i

s = 0

1.upto(y) do |y|
	
	1.upto(12) do |mm|
	
		s = s + x
		puts "За год #{y} месяц #{mm}, отложено: #{s}"
	
	end
	
end

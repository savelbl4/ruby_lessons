# encoding: utf-8

print "Какую сумму будем откладывать в месяц: "
x = gets.to_f

print "Сколько месяцев: "
y = gets.to_i

1.upto(y) do |mm|
	
	puts "За #{mm.to_s} месяц: #{x*mm.to_i}"
	
end

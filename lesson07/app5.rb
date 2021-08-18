# encoding: utf-8

print "Сколько гостей к вам придёт? "

z = gets.to_i

if z <= -100
	puts "да ты издеваешься"
	exit
end
if z < 0
	puts "error"
	exit
end
if z != 0
	puts "кто-то будет."
end
if z == 1
	puts "придёт один человек"
end
if z == 2
	puts "придёт двое людей"
end
if z >= 3
	puts "будет много гостей, пельмешек не хватит"
end
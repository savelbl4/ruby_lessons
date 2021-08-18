# encoding: utf-8

print "Хочешь поиграть? (Y/N): "

a = gets.chomp.upcase

print "Сколько тебе лет? "

b = gets.to_i

if a == "Y" && b > 18
	puts "Играй на здоровье =)"
end
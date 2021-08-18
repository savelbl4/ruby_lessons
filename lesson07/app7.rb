# encoding: utf-8

print "Хочешь поиграть? (Y/N): "

a = gets.chomp.upcase

if a == "Y"
	
	print "Сколько тебе лет? "
	
	b = gets.to_i
	
	if b > 18
	
	puts "Играй на здоровье =)"
	
	else
	
	puts "Подрости, потом поиграешь =)"
	
	end

else

	if a == "N"
	
	puts "nu i ne igray"
	
	else
	
		puts "Я пока не на столько крутой программист, поэтому вводи, что просят =)"
	
	end
end
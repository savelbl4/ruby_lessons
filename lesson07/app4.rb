# encoding: utf-8

print "сколько раз будем играть? "

z = gets.to_i

print "любимое число от 1 до 50: "

y = gets.to_i

wins = 0

1.upto(z) do |x|
	
#	print "Играем #{x} раз..\n"
	
	answer = rand(1..50)
	
	if answer == y
		print "Играем #{x} раз..\n"
		wins = wins + 1
		print "заебись!\nпобедил #{wins} раз\n"
#	else
#		print "проиграл, неудачник\n"
	end
	
end


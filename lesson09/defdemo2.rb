def gets_password
	print "Введите пароль: "
	return gets.chomp #return можно опустить
end

xx = gets_password

puts "Был введён пароль: #{xx}"
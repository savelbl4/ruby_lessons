# encoding: utf-8

print "Введиде ваше имя: "

name = gets.strip.capitalize	# .strip - удаляет из переменной пустые символы 
															# .capitalize - делает первую букву заглавной (латиница)

puts "Добрый вечер, #{name.chomp}, я Бэн Флэтчер!"
puts "В вашем имени #{name.chomp.length} букв и поэтому я приду за тобой!"
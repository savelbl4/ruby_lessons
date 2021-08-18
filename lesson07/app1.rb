# encoding: utf-8

str = "Вы довольны своей зарплатой? (Y/N): "

str.size.times do |x|
print str[x]
d = (1 + rand(30)).to_f / 100
sleep d
end

answer = gets.chomp.upcase.strip

if answer == "Y"
	str = "Очень хорошо!"
	str.size.times do |x|
		print str[x]
		d = (1 + rand(30)).to_f / 100
		sleep d
	end
	print "\n"
end
	if answer == "N"
			str = "Уволен =)"
			str.size.times do |x|
			print str[x]
			d = (1 + rand(30)).to_f / 100
			sleep d
		end
		print "\n"
	end
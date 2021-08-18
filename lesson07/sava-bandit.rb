print "Сколько вам лет? "
age = gets.to_i

money = 100

if age <18
	puts "Подрости, потом поиграешь =)"
	gets
	exit
end

print "Хотите ли вы поиграть (Y/N)?"
answer = gets.strip.upcase

if age >= 18 && answer == "IDDQD"
	str = "ПРИВЕТИКИ МЕДВЕДИКИ!!! ТЫ ВЗЛОМАЛ КАССУ!!"
	str.size.times do |x|
		print str[x]
		d = (1 + rand(30)).to_f / 100
		sleep d
	end
	money = money + 1_000_000
end

if answer == "Y" || answer == "IDDQD"

	puts "Хорошо, поиграем!"
	
	money = money
	
	puts "На вашем счету #{money}$, каждая попытка стоит 5$."

	while money > 0

		puts "Введите Enter, чтобы начать"
		gets

		if money - 5 > 0 # || money = money - 5

			money = money - 5

			x = rand (0..5)
			y = rand (0..5)
			z = rand (0..5)

			10.times do |xx|
				meter = rand (0..9)
				if xx < 9
					print "#{meter}\r"
					sleep 0.08
					else
						print "#{x}"
				end
			end
			10.times do |xx|
				meter = rand (0..9)
				if xx < 9
					print "\r#{x}#{meter}\r"
					sleep 0.08
					else print "\r#{x}#{y}"
						y = y
				end
			end
			10.times do |xx|
				meter = rand (0..9)
				if xx < 9
					print "\r#{x}#{y}#{meter}\r"
					sleep 0.08
					else print "\r#{x}#{y}#{z}\n"
						z = z
				end
			end

			# Одинаковые
			if x == y && x == z
				if x == 0
					puts "Ваш баланс обнулён!"
					money = 0
				end

				# 111

				if x == 1
					puts "Вам зачислено 10 долларов"
					money = money + 10
				end

				# 222

				if x == 2
					puts "Вам зачислено 20 долларов"
					money = money + 20
				end

				# 333

				if x == 3
					puts "Вам зачислено 30 долларов"
					money = money + 30
				end

				# 444

				if x == 4
					puts "Вам зачислено 40 долларов"
					money = money + 40
				end

				# 555

				if x == 5
					puts "Вам зачислено 50 долларов"
					money = money + 50
				end

				# 666

				if x == 6
					puts "С Вас списано 60 долларов"
					money = money - 60
				end

				# 777

				if x == 7
					puts "Джек пот! Вам зачислено 10000 долларов"
					money = money + 10000
				end

				# 888

				if x == 8
					puts "Вам зачислено 80 долларов"
					money = money + 80
				end

				# 999

				if x == 9
					puts "Вам зачислено 90 долларов"
					money = money + 90
				end
			end

			# 123

			if y == x + 1 && z == y + 1
				puts "Вам зачислено 500 долларов"
				money = money + 500
			end
			if x == y && x != z
				puts "Парное совпадение! Вам зачислен 1$."
				money = money + 1
			elsif  y == z && x != z
				puts "Парное совпадение! Вам зачислен 1$."
				money = money + 1
			end

			# puts "#{x}#{y}#{z}"
			puts "Остаток на счету: #{money} долларов"

		end
	end

	if money - 5 <= 0
		str = "У тебя больше нет денег, приходи когда заработаешь ещё =)\n"
		str.size.times do |x|
			print str[x]
			d = (1 + rand(30)).to_f / 100
			sleep d
		end
		gets
		exit
	end

elsif answer == "N"

	str = "Ну и не играй =("
	str.size.times do |x|
		print str[x]
		d = (1 + rand(30)).to_f / 100
		sleep d
	end
	gets
	exit

else

	str = "Я пока не на столько крутой программист, поэтому вводи, что просят =)"
	str.size.times do |x|
		print str[x]
		d = (1 + rand(30)).to_f / 100
		sleep d
	end
	gets
	exit

end
@arr = ['_', '_', '_', '_', '_', '_', ' ', ' ', ' ']
puts"\n"

# Заставка (можно скрыть).

3.times do
	print "\r\t\tКрестики-нолики!"
	sleep 0.35
	print "\r\t\t                "
	sleep 0.35
end

puts "\r\t\tКрестики-нолики!"
sleep 1
puts "\n\t\t     X|O|X     "
sleep 0.5
puts   "\t\t     O|X|O     "
sleep 0.5
puts   "\t\t     X|O|X     "
sleep 0.5
puts   "\t\t_______________\n\n\n" 
sleep 0.5

# Показывает игровое поле с результатами.

def playing_field
puts "#{@arr[0]}|#{@arr[1]}|#{@arr[2]}\n#{@arr[3]}|#{@arr[4]}|#{@arr[5]}\n#{@arr[6]}|#{@arr[7]}|#{@arr[8]}"
puts 
end

# Условия победы или ничьей.

def victory_conditions

	if 	@arr[0] == @arr[1] && @arr[0] == @arr[2] && @arr[0] == :X ||
		@arr[3] == @arr[4] && @arr[3] == @arr[5] && @arr[3] == :X ||
		@arr[6] == @arr[7] && @arr[6] == @arr[8] && @arr[6] == :X ||

		@arr[0] == @arr[3] && @arr[0] == @arr[6] && @arr[0] == :X ||
		@arr[1] == @arr[4] && @arr[1] == @arr[7] && @arr[1] == :X ||
		@arr[2] == @arr[5] && @arr[2] == @arr[8] && @arr[2] == :X ||

		@arr[0] == @arr[4] && @arr[0] == @arr[8] && @arr[0] == :X ||
		@arr[2] == @arr[4] && @arr[2] == @arr[6] && @arr[2] == :X
                
		puts "\nВы победили."
		playing_field		
		sleep 3
		exit

	elsif  	@arr[0] == @arr[1] && @arr[0] == @arr[2] && @arr[0] == :O ||
		@arr[3] == @arr[4] && @arr[3] == @arr[5] && @arr[3] == :O ||
		@arr[6] == @arr[7] && @arr[6] == @arr[8] && @arr[6] == :O ||

		@arr[0] == @arr[3] && @arr[0] == @arr[6] && @arr[0] == :O ||
		@arr[1] == @arr[4] && @arr[1] == @arr[7] && @arr[1] == :O ||
		@arr[2] == @arr[5] && @arr[2] == @arr[8] && @arr[2] == :O ||

		@arr[0] == @arr[4] && @arr[0] == @arr[8] && @arr[0] == :O ||
		@arr[2] == @arr[4] && @arr[2] == @arr[6] && @arr[2] == :O

                puts "\nСлава роботам!"
		playing_field		
		sleep 3
		exit

	elsif   @arr.include?('_') || @arr.include?(' ')
 
	else 		   
		puts "\nНичья!"
		playing_field
		sleep 3
		exit		
	end
end

# Ход человека.

def turn_human
	puts "\n1|2|3"
	sleep 0.1
	puts   "4|5|6"
	sleep 0.1
	puts   "7|8|9"
	puts   "-----"
	sleep 0.5
	playing_field	
	print "Делайте свой ход: "
	x = gets.to_i
                          
	if 	x < 1 || x > 9 
		puts "\nНекорректное значение, повторите ввод."
		sleep 2
		turn_human
		
	elsif	@arr[x-1] != :O && @arr[x-1] != :X
		@arr[x-1]  = :X		
		victory_conditions
		turn_cpu      
	else
		puts "\nОй, эта ячейка занята, попробуйте ещё раз."
		sleep 2
		turn_human		
	end
end

# Ход компьютера.

def turn_cpu
	print "\rХод компьютера... "
	sleep 0.7

	# Добавляем компьютеру немного интеллекта.
	# В этом блоке, при возможности, компьютер делает победный ход.

	if	@arr[0] == :O && @arr[1] == :O && @arr[2] != :X 
		@arr[2] = :O
	elsif	@arr[1] == :O && @arr[2] == :O && @arr[0] != :X 
		@arr[0] = :O
	elsif	@arr[0] == :O && @arr[2] == :O && @arr[1] != :X 
		@arr[1] = :O

	elsif	@arr[3] == :O && @arr[4] == :O && @arr[5] != :X 
		@arr[5] = :O
	elsif	@arr[4] == :O && @arr[5] == :O && @arr[3] != :X 
		@arr[3] = :O
	elsif	@arr[3] == :O && @arr[5] == :O && @arr[4] != :X 
		@arr[4] = :O

	elsif	@arr[6] == :O && @arr[7] == :O && @arr[8] != :X 
		@arr[8] = :O
	elsif	@arr[7] == :O && @arr[8] == :O && @arr[6] != :X 
		@arr[6] = :O
	elsif	@arr[6] == :O && @arr[8] == :O && @arr[7] != :X 
		@arr[7] = :O

	elsif	@arr[0] == :O && @arr[3] == :O && @arr[6] != :X 
		@arr[6] = :O
	elsif	@arr[0] == :O && @arr[6] == :O && @arr[3] != :X 
		@arr[3] = :O
	elsif	@arr[3] == :O && @arr[6] == :O && @arr[0] != :X 
		@arr[0] = :O

	elsif	@arr[1] == :O && @arr[4] == :O && @arr[7] != :X 
		@arr[7] = :O
	elsif	@arr[1] == :O && @arr[7] == :O && @arr[4] != :X 
		@arr[4] = :O
	elsif	@arr[4] == :O && @arr[7] == :O && @arr[1] != :X 
		@arr[1] = :O

	elsif	@arr[2] == :O && @arr[5] == :O && @arr[8] != :X 
		@arr[8] = :O
	elsif	@arr[2] == :O && @arr[8] == :O && @arr[5] != :X 
		@arr[5] = :O
	elsif	@arr[5] == :O && @arr[8] == :O && @arr[2] != :X 
		@arr[2] = :O

	elsif	@arr[0] == :O && @arr[4] == :O && @arr[8] != :X 
		@arr[8] = :O
	elsif	@arr[0] == :O && @arr[8] == :O && @arr[4] != :X 
		@arr[4] = :O
	elsif	@arr[4] == :O && @arr[8] == :O && @arr[0] != :X 
		@arr[0] = :O

	elsif	@arr[2] == :O && @arr[4] == :O && @arr[6] != :X 
		@arr[6] = :O
	elsif	@arr[2] == :O && @arr[6] == :O && @arr[4] != :X 
		@arr[4] = :O
	elsif	@arr[4] == :O && @arr[6] == :O && @arr[2] != :X 
		@arr[2] = :O

	#  В этом блоке компьютер блокирует предвыйгрышную комбинацию человека.

	elsif	@arr[0] == :X && @arr[1] == :X && @arr[2] != :O 
		@arr[2] = :O
		turn_human
	elsif	@arr[1] == :X && @arr[2] == :X && @arr[0] != :O 
		@arr[0] = :O
		turn_human
	elsif	@arr[0] == :X && @arr[2] == :X && @arr[1] != :O 
		@arr[1] = :O
		turn_human

	elsif	@arr[3] == :X && @arr[4] == :X && @arr[5] != :O 
		@arr[5] = :O
		turn_human
	elsif	@arr[4] == :X && @arr[5] == :X && @arr[3] != :O 
		@arr[3] = :O
		turn_human
	elsif	@arr[3] == :X && @arr[5] == :X && @arr[4] != :O 
		@arr[4] = :O
		turn_human

	elsif	@arr[6] == :X && @arr[7] == :X && @arr[8] != :O 
		@arr[8] = :O
		turn_human
	elsif	@arr[7] == :X && @arr[8] == :X && @arr[6] != :O 
		@arr[6] = :O
		turn_human
	elsif	@arr[6] == :X && @arr[8] == :X && @arr[7] != :O 
		@arr[7] = :O
		turn_human

	elsif	@arr[0] == :X && @arr[3] == :X && @arr[6] != :O 
		@arr[6] = :O
		turn_human
	elsif	@arr[0] == :X && @arr[6] == :X && @arr[3] != :O 
		@arr[3] = :O
		turn_human
	elsif	@arr[3] == :X && @arr[6] == :X && @arr[0] != :O 
		@arr[0] = :O
		turn_human

	elsif	@arr[1] == :X && @arr[4] == :X && @arr[7] != :O 
		@arr[7] = :O
		turn_human
	elsif	@arr[1] == :X && @arr[7] == :X && @arr[4] != :O 
		@arr[4] = :O
		turn_human
	elsif	@arr[4] == :X && @arr[7] == :X && @arr[1] != :O 
		@arr[1] = :O
		turn_human

	elsif	@arr[2] == :X && @arr[5] == :X && @arr[8] != :O 
		@arr[8] = :O
		turn_human
	elsif	@arr[2] == :X && @arr[8] == :X && @arr[5] != :O 
		@arr[5] = :O	
		turn_human
	elsif	@arr[5] == :X && @arr[8] == :X && @arr[2] != :O 
		@arr[2] = :O
		turn_human

	elsif	@arr[0] == :X && @arr[4] == :X && @arr[8] != :O 
		@arr[8] = :O
		turn_human
	elsif	@arr[0] == :X && @arr[8] == :X && @arr[4] != :O 
		@arr[4] = :O
		turn_human
	elsif	@arr[4] == :X && @arr[8] == :X && @arr[0] != :O 
		@arr[0] = :O
		turn_human

	elsif	@arr[2] == :X && @arr[4] == :X && @arr[6] != :O 
		@arr[6] = :O
		turn_human
	elsif	@arr[2] == :X && @arr[6] == :X && @arr[4] != :O 
		@arr[4] = :O
		turn_human
	elsif	@arr[4] == :X && @arr[6] == :X && @arr[2] != :O 
		@arr[2] = :O
		turn_human
	end	
        victory_conditions
	
	# В случае неисполнения первых двух блоков, компьютер делает случайный ход -
	# это делает игру компьютера более глупой.
		       
	o = rand(0..8)                          
	if @arr[o] != :X && @arr[o] != :O
		@arr[o] = :O			
		victory_conditions
		turn_human 		
	else
		print "\r                  "		
		turn_cpu
	end
end

# Тут определяется, кто делает первый ход.	

r = rand(0..1)
if r == 1
	puts "Вы играете за 'X' и делаете ход первым"
	sleep 2
	turn_human
else
	puts "Компьютер играет за 'O' и делает ход первым"
	sleep 2
	turn_cpu
end
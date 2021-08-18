
def gets_command
	get = rand(0..3)
	if get == 0
		get = :left
		get
	elsif get == 1
		get = :right
		get
	elsif get == 2
		get = :up
		get
	else
		get = :down
		get
	end
end

command = gets_command

print "Получена команда: #{command}\n"

if command == :left
	puts "Робот едет влево"
elsif command == :right
	puts "Робот едет вправо"
elsif command == :up
	puts "Робот едет вперёд"
elsif command == :down
	puts "Робот едет назад"
end

# вигода от символов в том, что их использование расходует в разы меньше памяти
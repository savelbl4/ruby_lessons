
def gets_command
	get = [:left, :right, :up, :down]
	x = rand(0..3)	#
	get[x]					#тоже самое
	# get.sample #выводится случайное значение из массива
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
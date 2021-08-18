
def gets_command
	"Left"
end

command = gets_command

print "Получена команда: #{command}\n"

if command == "Left"
	puts "Робот едет влево"
end

# Тоже с помощью символа (Symbol)

def gets_command_symbol
	:Right #символ
end

command = gets_command_symbol

print "Получена команда: #{command}\n"

if command == :Right
	puts "Робот едет вправо"
end

# вигода от символов в том, что их использование расходует в разы меньше памяти
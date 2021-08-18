
def gets_command
	z = gets.upcase.strip
	a = "Left"
	b = "Right"
	if z == "L"
		return a
	elsif z == "R"
		return b
	else
		return "таких команд нет =)"
	end
end

print "Введите команду: "
puts gets_command
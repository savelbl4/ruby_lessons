phonebook = {}
loop do
	print "Enter name: "
	name = gets.strip.capitalize
	if name != ""
		print "Enter phone number: "
		phone = gets.strip
		phonebook[name] = phone
	else
		break
	end
end
phonebook.each do |key, value|
	puts "#{key}: #{value}"
end
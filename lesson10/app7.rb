@arr = []
def add_items
	loop do
		arr = []
		print "Enter name: "
		name = gets.strip
		if name != ""
			print "Enter age: "
			age = gets.to_i
			arr << name
			arr << age
			@arr << arr
		else
			break
		end
	end
end
def display_items
	x = 0
	@arr.each do |items|
		puts "#{x = x + 1} #{items[0].capitalize}, #{items[1]}"
	end
end
def remove_items
		print "Delete member: "
		n = gets.to_i - 1
		@arr.delete_at(n)
end
loop do
	print "Enter command: "
	command = gets.strip.upcase
	if command.to_i == 1
		display_items
	elsif command.to_i == 2
		add_items
	elsif command.to_i == 3
		remove_items
	elsif command == "STOP"
		break
	end
end
arr = []
loop do
	arr2 = []
	print "Enter name: "
	name = gets.strip
	print "Enter age: "
	age = gets.to_i
	if name == "" || age == 0
		break
	else
		arr2 << name
		arr2 << age
		arr << arr2
	end
end
x = 0
arr.each do |list|
	puts "#{x = x + 1} #{list[0]}, #{list[1]}"
end
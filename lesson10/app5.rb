arr = []

while true
	x = 0

	if arr.empty? == true
		print "Массив пуст\n"
	end

	print "Добавьте: "

	n = gets.strip

	if n.empty? == true
		arr.each do |name|

				print "#{x = x + 1} #{name.capitalize}\n"

		end
		exit
	else
		arr << n
	end
end
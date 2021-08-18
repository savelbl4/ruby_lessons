arr = ["walt","hank","jr","jessie","lidia"]

while arr.empty? == false
	arr = arr

	x = 0

	print "В классе:\n"

	arr.each do |name|

		print "#{x = x + 1} #{name.capitalize}\n"

	end

	print "кого выгнать? "

	n = gets.to_i - 1

	arr.delete_at(n)

end

print "Больше некого выгонять.\n"
exit
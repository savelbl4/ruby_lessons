

arr = ["maxim", "egor", "boris", "nik"]

x = 0

arr.each do |name|
	x = x + 1
	print "#{x} #{name.capitalize}\n"
end
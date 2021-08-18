x = rand (0..5)
y = rand (0..5)
z = rand (0..5)

10.times do |xx|
	meter = rand (0..5)
	if xx < 9
		print "#{meter}\r"
		sleep 0.08
	else
		print "#{x}"
	end
end
10.times do |xx|
	meter = rand (0..5)
	if xx < 9
		print "\r#{x}#{meter}"
		sleep 0.08
	else
		print "\r#{x}#{y}"
	end
end
10.times do |xx|
	meter = rand (0..5)
	if xx < 9
		print "\r#{x}#{y}#{meter}"
		sleep 0.08
	else
		print "\r#{x}#{y}#{z}\n"
	end
end
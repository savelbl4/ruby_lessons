x = rand (0..5)
y = rand (0..5)
z = rand (0..5)

10.times do |xx|
	meter = rand (0..9)
	if xx < 9
		print "#{meter}--\r\r\r"
		sleep 0.08
		else
			print "#{x}--"
	end
end
10.times do |xx|
	meter = rand (0..9)
	if xx < 9
		print "\r\r\r#{x}#{meter}-\r\r\r"
		sleep 0.08
		else print "\r\r\r#{x}#{y}-"
			y = y
	end
end
10.times do |xx|
	meter = rand (0..9)
	if xx < 9
		print "\r\r\r#{x}#{y}#{meter}\r\r\r"
		sleep 0.08
		else print "\r\r\r#{x}#{y}#{z}\n"
			z = z
	end
end
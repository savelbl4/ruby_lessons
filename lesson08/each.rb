r = "="
(-2..2).each do |x|
	print "#{x} "
end
print "\n#{r*5}\n"
(0...5).each do |x|
	print "#{x} "
end
print "\n#{r*5}\n"
("a".."z").each do |x|
	print "#{x} "
end
print "\n#{r*5}\n"
("234".."981").each do |x|
	print "#{rand(111..555)}\r\r\r"
	sleep 0.08
end
print "\n#{r*5}\n"
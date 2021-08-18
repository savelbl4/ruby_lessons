# encoding: utf-8

10.upto(20) do |x|
	x.times { print "осень " }
	puts "\nсвобода, равенство, упячка"
	sleep 0.2
end
20.downto(10) do |x|
        x.times { print "осень " }
        puts "\nсвобода, равенство, упячка"
        sleep 0.2
end

puts "пришла."
gets

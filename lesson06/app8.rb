# encoding: utf-8

10.times do
#1.upto(10) do

	x = rand 10
	puts x

end
puts "-------"
1.upto(10) do

	x = rand (10..15)
	puts x

end
puts "-------"
10.times { puts rand (45..99) }

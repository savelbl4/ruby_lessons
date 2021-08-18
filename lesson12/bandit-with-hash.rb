money = 100
znachenie = ''
hh = {
	'111' => 10,
	'222' => 20,
	'333' => 30,
	'444' => 40,
	'555' => 50,
	'666' => -money/2,
	'777' => money,
	'888' => -80,
	'999' => -90,
	'000' => -money
}
while money -5 >= 0
	print 'Are you ready? '
	gets
	x = rand (0..5)
	y = rand (0..5)
	z = rand (0..5)
	money = money

	znachenie = x.to_s + y.to_s + z.to_s
	puts znachenie
	if hh[znachenie]
		puts "Остаток: #{money = money + hh[znachenie]}"
	elsif money <= 0
		puts "Game Over"
		break
	else
		money = money - 5
		puts "Остаток: #{money}"
	end

end

puts "No money - no honey"
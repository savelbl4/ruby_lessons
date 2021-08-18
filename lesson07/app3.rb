# encoding: utf-8

print "нажмире return, чтобы сыграть.."

gets

1.upto(500) do |x|

	answer = rand(1..50)
	
	if answer == 47
		print "заебись!\nпобедил с #{x} раза\n"
	end
	
end


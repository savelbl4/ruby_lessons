# encoding: utf-8

print "Вы довольны своей зарплатой? (Y/N): "

answer = gets.chomp.upcase.strip.to_i

if answer == 1
    print "заебись!\n"
end

if answer == 0
    print "хуёво\n"
end



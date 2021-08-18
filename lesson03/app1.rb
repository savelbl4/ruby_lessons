# encoding: utf-8
puts "Добропожаловать!\n Перед Вами закон Ома!"
print "Введите напряжение U = "
U = gets.chomp
print "Введите сопротивление R = "
R = gets.chomp
I = U.to_f / R.to_f
puts "Сила тока I = " + I.to_s
gets

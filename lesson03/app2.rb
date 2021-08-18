# encoding: utf-8
print "Введи целое число a = "
a = gets
print "Введи и сюда целое b = "
b = gets.to_i
print "А сюда введи дробное c = "
c = gets.to_f
x = a.to_i + b + c
puts "Получи их сумму x = " + x.to_s + " и жмакни 'Enter'"
gets

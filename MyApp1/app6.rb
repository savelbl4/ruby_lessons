print "Enter your name: "
myname = gets.chomp			# .chomp - метод применяемый к параметру gets, чтобы 
print "Enter your age: "	# переменной не присваивался перенос строки
age = gets.chomp
puts "Hallo " + myname + ", your age is " + age + "!!!"
puts "Press enter to exit."
gets

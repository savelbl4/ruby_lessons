# encoding: utf-8

print "x = "
x = gets.chomp
print "y = "
y = gets.to_i
print "z = "
z = gets.to_f
#puts "x = " + x.to_s + " y = " + y.to_s + " z = " + z.to_s
puts "x = #{x} y = #{y} z= #{z}" # интерполяция строк
gets

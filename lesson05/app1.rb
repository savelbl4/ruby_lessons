# encoding: utf-8

puts 4.upto(20) { |i| puts "i = #{i.to_s}, четное: #{i.to_i.even?}" }
puts -5.upto(5) { |i| puts "i = #{i.to_s}, четное: #{i.to_i.even?}" }
puts 50.downto(-50) { |i| puts "i = #{i.to_s}, четное: #{i.to_i.even?}" }
puts 10.downto(3) { |i| puts "i = #{i.to_s}, четное: #{i.to_i.even?}" }

class Abc
	attr_reader :aa #позволяет читать переменную
	attr_accessor :xx #позволяет читать и записывать переменную
	def initialize (bb) #внешние параметры объекта
		@aa = bb
		@xx = []
	end

	# def aa
	# 		puts @aa
	# end

end

bb = Abc.new('hello')

puts bb.aa
puts bb.xx.inspect
bb.xx = ['1',2,'3']
puts bb.xx.inspect
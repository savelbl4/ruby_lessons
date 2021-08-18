class Book
	# создание глобальных переменных при инициализации класса
	def initialize
		@hh = {}
	end

	def add_person options
		# добавляет пару в хеш
		puts 'такое имя уже есть в списке' if @hh[options[:name]]
		@hh[options[:name]] = options[:age]
	end

	def show_hash
		@hh.each do |key, value|
			puts "#{key}: #{value}"
		end
	end

end

b = Book.new

loop do
	# добавлять пока не введена пустая строка
	print 'Enter name: '
	x = gets.strip
	if x == ''
		b.show_hash
		exit
	end
	print 'Enter age: '
	y = gets.to_i
	b.add_person :name => x, :age => y
end
@hh = {}

def set_age options
	# добавляет пару в хеш
	puts 'такое имя уже есть в списке' if @hh[options[:name]]
	@hh[options[:name]] = options[:age]
end

def show_hash
	@hh.each do |key, value|
		puts "#{key}: #{value}"
	end
end

loop do
	# добавлять пока не введена пустая строка
	print 'Enter name: '
	x = gets.strip.capitalize
	if x == ''
		show_hash
		exit
	end
		print 'Enter age: '
		y = gets.to_i
		set_age :name => x, :age => y
end
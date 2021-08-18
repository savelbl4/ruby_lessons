arr = %w[maxim egor boris nik]

arr.each_with_index do |name, index|	#.each_with_index - выводит индекс элемента в массиве

	print "#{index + 1}. #{name.capitalize}\n"

end
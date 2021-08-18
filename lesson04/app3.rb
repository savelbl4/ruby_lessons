
puts "\n\nhttp://ruby-doc.org/core-2.1.1/Integer.html\n строка повторяется столько раз сколько символов имеет в себе\n\n"
puts x.size.times { puts "#{x} " }	# http://ruby-doc.org/core-2.1.1/Integer.html тут описаны все параметры применяемые к числам
puts "\n\nтупо повторим хрень 100 раз\n\n"
100.times { |i| print "i = #{i.to_s} " }

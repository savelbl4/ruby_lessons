dict = {
	'cat' => ['кот, кошка','зоол. животное семейства кошачьих','сварливая, любящая позлословить женщина','амер. ; разг. знаток и любитель джаза','разг. парень','двойной треножник','мор. кат','игра в чижики'],
	'dog' => ['собака, пёс','кобель; самец (волка, лисы, шакала)','гончая, борзая; охотничья собака','(the dogs) разг. состязание борзых, собачьи бега','разг. собака, подлец, сволочь, скотина','разг. парень, малый','австрал. ; разг. стукач, доносчик','железная подставка для дров в камине','гвоздодёр','собачка (деталь в замке)','разг. страшилище, страхолюдина, уродина (некрасивая женщина)','разг. дрянь, барахло (о товаре)'],
	'girl' => ['девочка; дочка','девушка; разг. молодая женщина','девушка, подруга, возлюбленная; дама сердца','прислуга, служанка','продавщица','разг. хористка','танцовщица в ревю'],
	'boy' => ['мальчик','парень, человек (употребляется вместо man)','сын','бой (слуга-туземец на Востоке)','мор. юнга','(the boy) разг. шампанское','молодчина, мастер, удалец','разг. дружище, старина, приятель']
}
loop do
	print 'Введите слово: '
	word = gets.strip
	if word != ''
		puts "Количество переводов слова - #{dict[word].length}"
		puts 'Переводы: '
		dict[word].each_with_index do |item, index|
				puts "#{index + 1}) #{item}"
		end
	else
		break
	end
end
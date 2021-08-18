hh = {
	'Mike' => 45,
	'Jessie' => 25
}

puts "#{hh} вот он наш хеш"

#puts hh.inspect # бесполезная хуита

puts hh.keys # только ключи хеша

puts "#{hh.keys.inspect} ключи хеша ввиде массива"

puts hh.values # только значения хеша

puts "#{hh.values.inspect} значкния хеша в массиве"

#ниже такое себе

hh.keys.each do |key|
	value = hh[key]
	puts value
end

hh.clear #очищает хеш

puts 'hh.clear - очищает хеш'

puts "#{hh} вот теперь наш хеш опустел"

puts 'проверка наличия значения в хеше'

hh = {
	'Mike' => 45,
	'Jessie' => 25
}

#1
if hh.key? 'Mike'
	puts hh['Mike']
end
#2
if hh['Jessie']
	puts hh['Jessie']
end

# http://phrogz.net/programmingruby/tut_classes.html
class Animal

	def initialize name
		@name = name
	end

	def run
		puts "#{@name} is running..."
	end

	def jump
		puts "#{@name} is jumping..."
	end

end

class Cat < Animal

	def initialize
		super 'Cat'
	end

	def say_meow
		puts "#{@name} say: Meeeooow!"
	end

end

class Dog < Animal

	def initialize
		super 'Dog'
	end

	def bark
		puts 'Woof-woof!'
	end

end

cat = Cat.new
cat.run
cat.jump
cat.say_meow

dog = Dog.new
dog.run
dog.jump
dog.bark
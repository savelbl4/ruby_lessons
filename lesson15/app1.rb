class Country
	attr_reader :name, :ports
	def initialize(args)
		@name = args
		@ports = []
	end
	def add_port(port)
		@ports << port
	end
end

class Port
	attr_reader :name, :planes
	def initialize(args)
		@name = args
		@planes = []
	end
	def add_plane(plane)
		@planes << plane
	end
end

class Plane
	attr_reader :name
	def initialize(args)
		@name = args
	end
end

ctr = Country.new 'Russia'

apt1 = Port.new 'Vnukovo'
apt2 = Port.new 'Domodedovo'
apt3 = Port.new 'Sheremetyevo'

pls1 = Plane.new 'Boeing-474'
pls2 = Plane.new 'TU-134'
pls3 = Plane.new 'YAK-42'

apt1.add_plane pls1
apt1.add_plane pls2
apt1.add_plane pls3

apt2.add_plane pls1
apt2.add_plane pls2
apt2.add_plane pls3

apt3.add_plane pls1
apt3.add_plane pls2
apt3.add_plane pls3

ctr.add_port apt1
ctr.add_port apt2
ctr.add_port apt3

ctr.ports.each do |airport|
	puts "Самолёты в #{airport.name}:"
	airport.planes.each do |name|
		puts name.name
	end
end
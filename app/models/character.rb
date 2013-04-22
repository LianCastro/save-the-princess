# app/models/character.rb
class Character
	#Character profile attributes
	attr_accessor :name
	attr_accessor :strength
	attr_accessor :skill
	attr_accessor :armor
	attr_accessor :resistance
	attr_accessor :fire_power
	attr_accessor :current_hp
	attr_reader :max_health_points
	
	# Character constructor. Sets the attributes default values.
	def initialize(params = {})
		self.name = params[:name] || ""
		self.strength = params[:strength] || 0
		self.skill = params[:skill] || 0
		self.armor = params[:armor] || 0
		self.resistance = params[:resistance] || 0
		self.fire_power = params[:fire_power] || 0
		
		calculate_max_health_points
	end
	
	# Character actions

	# calculate attack
	def attack
		strength.times.collect do
			Die.roll
		end.inject(:+)
	end
	
	# calculate defense
	def defense
		armor.times.collect do
			Die.roll
		end.inject(:+)
	end

	private
	# calculate points of life
	def calculate_max_health_points
		if (resistance == 0)
			@max_health_points = 1
		else 
			@max_health_points = resistance.times.collect{ Die.roll }.inject(:+)
		end
	end
end

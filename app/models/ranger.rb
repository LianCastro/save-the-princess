# app/models/ranger.rb
class Ranger < Character
	def attack
		super + 4
	end
	def defense
		super - 1
	end
end

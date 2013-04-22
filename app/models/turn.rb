# app/models/turn.rb
class Battle::Round::Turn
	attr_accessor :attacker, :defender

	#get fighters
	def initialize (params = {})
		@attacker = params[:attacker]
		@defender = params[:defender]

		self
	end

	def start
		damage = @attacker.attack - @defender.defense
		if damage > 0
			@defender.current_hp -= damage
		end
	end	
end

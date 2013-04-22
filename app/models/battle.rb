# app/models/battle.rb
class Battle
	attr_accessor :challenger, :opponent
	
	#get fighters
	def initialize (params = {})
		@challenger = params[:challenger]
		@opponent = params[:opponent]
	end


	#Calculate initiative
	def initiative
		roll_o = Die.roll
		roll_c = Die.roll
		if roll_c != roll_o
			if roll_c > roll_o
				[@challenger, @opponent]
			else
				[@opponent, @challenger]
			end
		else
			initiative
		end
		
	end
	# start battle
	def start

		@challenger.current_hp = @challenger.max_health_points
		@opponent.current_hp = @opponent.max_health_points

		order = initiative
		while @challenger.current_hp > 0 and @opponent.current_hp > 0
			Round.new(challenger: order[0], opponent: order[1]).start				
		end
		if @challenger.current_hp > 0
			@challenger.name
		else
			@opponent.name
		end

	end
end

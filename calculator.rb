puts "digite your strengh valor"
str = gets.to_i
puts "digite your armor valor"
arm = gets.to_i

v_atk = str.times.collect do
	rand(6) + 1
end.inject(:+)

v_def = arm.times.collect do
	rand(6) + 1
end.inject(:+)

damage = v_atk - v_def

if damage > 0 then
	puts "valor of atk = " + v_atk.to_s
	puts "valor of def = " + v_def.to_s
	puts "total damage = " + damage.to_s
else
	puts "you was not attacked"
end

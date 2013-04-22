puts "Digite a forca"
forca = gets.to_i

puts "Digite a armadrua"
armadura = gets.to_i

ataque = forca.times.collect do
	rand(6) + 1
end.inject(:+)

defesa = armadura.times.collect do
	rand(6) + 1
end.inject(:+)

dano = ataque - defesa

if dano >= 0 then
	puts "Valor de ataque = " + ataque.to_s
	puts "Valor da defesa = " + defesa.to_s
	puts "Valor do dano = " + dano.to_s
else
	puts "O personagem nao sofreu dano"
end

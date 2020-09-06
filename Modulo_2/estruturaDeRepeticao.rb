#while
i = 0
 numero = 10

 while i < numero
 	puts "Rodada... " + i.to_s
 	i+= 1
 end

 #each
(0..5).each do |i|
	puts "O valor Lido foi " + i.to_s
end
['A','B',50].each do |item|
	puts "Valor lido: " + item.to_s
end
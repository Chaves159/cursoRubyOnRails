#CASE
print "Digite sua idade: "
idade = gets.chomp.to_i
case idade
	when 0..2
		puts "bebe"
	when 3..12
		puts "Crianca"
	when 13..18
		puts "Adolecente"
	else
		puts "Adulto"
end		
	
# UNLESS
print "Digite um numero: "
x = gets.chomp.to_i
unless x >=5
	puts "O valor é menor que 5"
else 
	puts "O valor é maior ou Igual a 5"
end
# IF
puts "Digite um numero: "
numero = gets.chomp.to_i

if numero > 3
	puts "O numero é maior que 3"
else
	puts "O numero e menor que 3"
end
 
	
puts "Digite seu nome"

nome = gets.chomp

puts "O seu nome é: " + nome

puts "=================================="

puts nome.inspect


puts "=================================="

sal = gets.chomp.to_f

puts "Seu salario é: " + (sal * 1.1).to_s
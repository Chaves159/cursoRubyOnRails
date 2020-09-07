require_relative 'pagamento'
include Pagamento

puts "Digite a bandeira do seu cartao: "
bandeira = gets.chomp
puts "Digite o numero do seu cartão: "
numero = gets.chomp
puts "Digite o Valor da Compra: R$"
valor = gets.chomp

puts pagar(bandeira, numero, valor)
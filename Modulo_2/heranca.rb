class Pessoa
	attr_accessor :nome, :email
end

class PessoaFisica < Pessoa
	attr_accessor :cpf

	def falar(texto)
		texto
	end
end

class PessoaJuridica < Pessoa
	attr_accessor :cnpj

	def pagar_fornecedor
		 "Pagando Fornecedor"
	end
end



 p1 = Pessoa.new

#SETTER
 p1.nome = "João"
 p1.email = "joao.victor.chaves06@aluno.ifce.edu.br"

#getter

puts p1.nome
 puts p1.email

puts "========================================"
 p2 = PessoaFisica.new
#SETTER
 p2.nome = "victor"

 p2.email = "joao.victor.chaves159@gmail.com"

 p2.cpf = "159.000.357-06"

#getter
 puts p2.nome
 puts p2.email
 puts p2.cpf
 puts p2.falar("Olá, Mundo")
puts "========================================"
 p3 = PessoaJuridica.new
#SETTER
 p3.nome = "Chaves"

 p3.email = "joao.victor.chaves159@gmail.com"

 p3.cnpj = "000.000.000-06"

 p3.pagar_fornecedor

#getter

puts p3.nome
puts p3.email
puts p3.cnpj
puts p3.pagar_fornecedor
puts "========================================"

 

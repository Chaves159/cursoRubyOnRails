class Pessoa 
	def falar (nome)
		"Ola, #{nome}!"
	end
	def initialize (cont = 1)
		cont.times do |i|
			puts "Inicializando... #{i}"
		end
	end
end

p = Pessoa.new(10)
puts p.falar("João Victor Chaves")
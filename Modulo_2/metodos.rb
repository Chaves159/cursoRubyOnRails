class Pessoa
	def falar #metodo de instancia
		"Ola, Pessoal!"
	end	
	def self.gritar(texto) #Metodo de classe, não precisa instanciar
		"#{texto}!!!!"
	end
end

p1 = Pessoa.new

puts p1.falar

puts Pessoa.gritar("Xablau")
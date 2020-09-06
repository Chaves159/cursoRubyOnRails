v = [[11,12,13],[14,15,16],[17,18,19]]

v.each do |externo|
	externo.each do |interno|
		puts interno
	end
end
puts "<============================>"
vetor = [1,3,5,6,7,9]
vetor.each do |item|
	puts item
end
puts "<============================>"
vet1 = Array.new
vet1.push(4)
vet1.push('Joao')
vet1.each do |elemento|
	puts elemento
end

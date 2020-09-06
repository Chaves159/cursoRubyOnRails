a = "Curso"
b = "Rails"
puts a + b # Sempre que usado cria um novo objeto na memoria
puts a << b # << Modifica a variavel

x = "Curso"
puts x.object_id

x = x + "Rails"

puts x

puts x.object_id
#######################

q = " Curso de "
puts q.object_id

q << "Rails"

puts q
puts q.object_id
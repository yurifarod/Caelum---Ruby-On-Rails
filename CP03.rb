print "Digite o nome do restaurante: "
nome = gets.chomp
print "Bem-vindo ao #{nome}\n"

#print nome.class()
#print 3*(2+8)/8

print "Digite a nota do restaurante: "
nota = gets.chomp.to_i

if nota > 7
  print "#{nome} é um restaurante bem avaliado\n"
else
  print "#{nome} é um restaurante mal avaliado\n"
end

print "Carregando"
for i in (1..6)
  print "."
  sleep(1)
end

#puts /Pau/ =~ "Sao Paulo"

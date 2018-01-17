class IdadeInsuficienteException < Exception
end

def verifica_idade(idade)
  raise IdadeInsuficienteException,
    "Você precisa ser maior de idade..." unless idade > 18
end

print "Digite sua idade: "
age = gets.to_i

begin
  verifica_idade(age)
rescue IdadeInsuficienteException => e
  puts "Foi lançada a exception: #{e}"
  exit
end
puts "Pode tomar uma!"

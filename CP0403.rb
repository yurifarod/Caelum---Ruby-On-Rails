print "Digite um número:"
idade = gets.to_i

begin
  resultado = 100 / numero
rescue
  puts "Número digitado inválido!"
  exit
end
puts "100/#{numero} é #{resultado} "

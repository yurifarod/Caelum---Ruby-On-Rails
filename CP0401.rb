class Restaurante
attr_accessor :nota

  def initialize(nome)
    puts "Criado um novo restaurante: #{nome}"
    @nome = nome
  end

  def retornaNota(msg="Obrigado")
    puts "A nota do estabelecimento #{@nome} foi #{@nota}, #{msg}"
  end
end

r1 = Restaurante.new("Fasano")
r2 = Restaurante.new("Fogo no Chao")
r1.nota = 10
r2.nota = 3
r1.retornaNota
r2.retornaNota("Comida Podre")

lista = []
lista[0] = "Sal & Brasa"
lista << "Giraffas"
lista << "Bob's"

for saida in lista
  puts saida
end

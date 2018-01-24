#Criação de objetos com "@@" e métodos de Classe (self)

class Restaurante
  def initialize(nome)
    @@total ||= 0
    @@total = @@total + 1
    @nome = nome
    puts "Criado o novo restaurante: #{@nome}"
    puts "Restaurantes criados até o momento: #{@@total}"
  end

  def self.relatorio
    puts "Foram criados #{@@total} restaurantes"
  end
end

r1 = Restaurante.new("Fasano")
r2 = Restaurante.new("Fogo no Chão")
Restaurante.relatorio

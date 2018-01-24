#Meta-Programação
class Franquia

  def info
    puts "Loja faz parte da Franquia"
  end

  def expandir(restaurante)
    def restaurante.cadastrar_vips
      puts "Restaurante #{@nome} agora com área VIP!"
    end
  end

  def method_missing(name, *args)
    #Qualquer metodo que não exista, pode ser escrito aqui
    puts "O metodo nao existe para #{args[0]} "
  end
end

class Restaurante
  def initialize(nome)
    @@total ||= 0
    @@total = @@total + 1
    @nome = nome
    puts "Criado o novo restaurante: #{@nome}"
    puts "Restaurantes criados até o momento: #{@@total}"
  end
end

r1 = Restaurante.new("Fasano")
r2 = Restaurante.new("Fogo no Chão")
r3 = Restaurante.new("Bob's")
franquia = Franquia.new

franquia.expandir r2
r2.cadastrar_vips
#r3.cadastrar_vips
#note que o código não foi Meta-Gerado para r3
puts franquia.já_cadastrado("Fasano")

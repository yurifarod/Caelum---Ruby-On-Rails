#Duck Typing
class Franquia
  def info
    puts "Loja faz parte da Franquia"
  end
end

class Restaurante < Franquia
  def info
    super
    puts "É um restaurante franquiado"
  end
end

def informa(franquia)
  franquia.info
end

r1 = Restaurante.new
r1.info
puts "\n"
informa r1

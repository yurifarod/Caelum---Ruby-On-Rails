class Franquia

  def initialize
    @lojas = []
  end

  def add(*lojas)
    for loja in lojas
      @lojas << loja
    end
  end

  def mostra
    @lojas.each do |r|
      puts r.nome + " - Método mostra"
    end
  end

  def relatorio
    @lojas.each do |r|
      yield r
    end
  end

  def imprimir
    for loja in @lojas
      puts loja.nome
    end
  end
end

class Loja
attr_accessor :nome
  def initialize(nome)
    @nome = nome
  end

  def notaFiscal(dados)
    puts "\n\n#############\n### CONTA ###\n#############\n\nLoja:#{self.nome}\nValor:#{dados[:valor]}\nItens:#{dados[:itens]}\nNota:#{dados[:nota]}"
  end

end

r1 = Loja.new("Huteba")
r2 = Loja.new("Americanas")
r3 = Loja.new("Pernambucanas")
franquia = Franquia.new
franquia.add r1, r2, r3
franquia.imprimir
franquia.mostra
franquia.relatorio do |r|
  puts "Loja cadastrada: #{r.nome}"
end
r3.notaFiscal(valor: 1822.00, itens: 7, nota: 9)

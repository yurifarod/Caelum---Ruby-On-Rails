class ApplicationRecord < ActiveRecord::Base
  self.abstract_class = true
  for qualificacao in Qualificacao.all
    puts "restaurante: " + qualificacao.restaurante.nome
    puts "cliente:" + qualificacao.cliente.nome
    puts "qualificacao: " + qualificacao.nota
  end

  Qualificacao.find(:all, include: :restaurante)
  Qualificacao.includes(:restaurante, :cliente)
  Qualificacao.includes(:cliente, restaurante: {pratos: :receitum})
end

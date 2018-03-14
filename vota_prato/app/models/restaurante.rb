class Restaurante < ApplicationRecord
  has_many :qualificacoes
  has_and_belongs_to_many :pratos
end

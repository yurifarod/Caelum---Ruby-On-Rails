class Restaurante < ApplicationRecord
  has_many :qualicacao
  has_and_belongs_to_many :pratos
end

class Supplier < ApplicationRecord
  has_many :inputs
  has_many :products
  # has_many :products, through: :inputs
end

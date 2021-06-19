class Supplier < ApplicationRecord
  has_many :inputs, dependent: :destroy
  has_many :products, dependent: :destroy
  # has_many :products, through: :inputs
end

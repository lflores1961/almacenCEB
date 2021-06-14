class Product < ApplicationRecord
  has_many :inputs
  has_many :outputs
  belongs_to :supplier
  # has_many :suppliers
end

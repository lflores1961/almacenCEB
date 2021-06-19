class Product < ApplicationRecord
  has_many :inputs, dependent: :destroy
  has_many :outputs, dependent: :destroy
  belongs_to :supplier
  # has_many :suppliers
end

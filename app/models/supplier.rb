class Supplier < ApplicationRecord
  has_many :inputs, class_name: "input"
  has_many :products, through: :inputs
end

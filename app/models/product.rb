class Product < ApplicationRecord
  has_many :inputs, class_name: "input"
  has_many :suppliers, through: :inputs
end

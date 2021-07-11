class Product < ApplicationRecord
  has_many :inputs, dependent: :destroy
  has_many :outputs, dependent: :destroy
  belongs_to :supplier
  # has_many :suppliers
  def add_to_stock(new_items)
    
    self.update(stock: self.stock + new_items)
  end
  
  def take_from_stock(items)
    result = self.stock - items
    self.update(stock: (result < 0) ? 0 : result)
  end
  
end

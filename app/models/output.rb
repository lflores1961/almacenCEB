class Output < ApplicationRecord
  belongs_to :product
  # belongs_to :user
  validate :only_take_existing

  private

    def only_take_existing
      producto = Product.find(product_id)
      new_stock = producto.stock - quantity
      if new_stock < 0
        errors.add(:quantity, ": No hay suficientes #{producto.name} para entregar la cantidad solicitada.")
      else
        producto.update(stock: new_stock)
      end
    end
    
end

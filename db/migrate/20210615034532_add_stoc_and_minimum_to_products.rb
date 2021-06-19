class AddStocAndMinimumToProducts < ActiveRecord::Migration[6.1]
  def change
    add_column :products, :stock, :decimal
    add_column :products, :minimum, :decimal
  end
end

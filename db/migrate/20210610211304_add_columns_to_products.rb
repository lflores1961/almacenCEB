class AddColumnsToProducts < ActiveRecord::Migration[6.1]
  def change
    add_reference :products, :capitulo, null: false, foreign_key: true
    add_reference :products, :concepto, null: false, foreign_key: true
    add_reference :products, :partida, null: false, foreign_key: true
  end
end

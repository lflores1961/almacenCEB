class CreateSearches < ActiveRecord::Migration[6.1]
  def change
    create_table :searches do |t|
      t.string :code
      t.string :name
      t.string :brand
      t.string :supplier_id
      t.string :capitulo_id
      t.string :concepto_id
      t.string :partida_id

      t.timestamps
    end
  end
end

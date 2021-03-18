class CreateProducts < ActiveRecord::Migration[6.1]
  def change
    create_table :products do |t|
      t.string :code
      t.string :name
      t.string :brand
      t.text :description
      t.string :unit
      t.string :package
      t.integer :units_per_package
      t.decimal :last_price

      t.timestamps
    end
  end
end

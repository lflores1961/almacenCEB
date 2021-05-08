class CreateInputs < ActiveRecord::Migration[6.1]
  def change
    create_table :inputs do |t|
      t.datetime :input_date
      t.string :invoice
      t.decimal :price
      t.decimal :quantity
      t.string :location
      t.references :product, null: false, foreign_key: true
      t.references :supplier, null: false, foreign_key: true
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end

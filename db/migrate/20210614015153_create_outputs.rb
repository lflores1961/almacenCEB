class CreateOutputs < ActiveRecord::Migration[6.1]
  def change
    create_table :outputs do |t|
      t.date :output_date
      t.string :invoice
      t.decimal :quantity
      t.decimal :price
      t.string :receiving_area
      t.string :receiving_person
      t.references :product, null: false, foreign_key: true
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end

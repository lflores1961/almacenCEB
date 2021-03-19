class CreateSuppliers < ActiveRecord::Migration[6.1]
  def change
    create_table :suppliers do |t|
      t.string :name
      t.string :phone
      t.string :email
      t.text :address
      t.string :postal_code

      t.timestamps
    end
  end
end

class CreatePartidas < ActiveRecord::Migration[6.1]
  def change
    create_table :partidas do |t|
      t.string :clave
      t.string :description
      t.references :concepto, null: false, foreign_key: true

      t.timestamps
    end
  end
end

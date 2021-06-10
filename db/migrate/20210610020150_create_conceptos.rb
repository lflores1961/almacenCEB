class CreateConceptos < ActiveRecord::Migration[6.1]
  def change
    create_table :conceptos do |t|
      t.string :clave
      t.string :description
      t.references :capitulo, null: false, foreign_key: true

      t.timestamps
    end
  end
end

class CreateCapitulos < ActiveRecord::Migration[6.1]
  def change
    create_table :capitulos do |t|
      t.string :clave
      t.string :description

      t.timestamps
    end
  end
end

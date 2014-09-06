class CreateAmbientes < ActiveRecord::Migration
  def change
    create_table :ambientes do |t|
      t.string :nombre
      t.string :ubicacion
      t.string :codigo
      t.text :descripcion

      t.timestamps
    end
  end
end

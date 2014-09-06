class CreateTipoElementos < ActiveRecord::Migration
  def change
    create_table :tipo_elementos do |t|
      t.integer :identificacion
      t.string :nombre
      t.text :descripcion
      t.string :icono

      t.timestamps
    end
  end
end

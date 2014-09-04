class CreateEstados < ActiveRecord::Migration
  def change
    create_table :estados do |t|
      t.boolean :permisos_de_salida
      t.boolean :disponible
      t.boolean :malo
      t.boolean :reparacion
      t.boolean :reservado
      t.text :descripcion

      t.timestamps
    end
  end
end

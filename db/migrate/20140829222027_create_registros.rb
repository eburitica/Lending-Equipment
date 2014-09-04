class CreateRegistros < ActiveRecord::Migration
  def change
    create_table :registros do |t|
      t.string :documento
      t.string :nombre_completo
      t.string :numero_ficha
      t.string :contrasena
      t.string :confirmar_contrasena
      t.string :email
      t.boolean :genero

      t.timestamps
    end
  end
end

class CreateElementos < ActiveRecord::Migration
  def change
    create_table :elementos do |t|
      t.integer :identificacion
      t.string :nombre
      t.string :codigo_interno
      t.string :codigo_contable
      t.text :descripcion
      t.references :tipo_elemento, index: true

      t.timestamps
    end
  end
end

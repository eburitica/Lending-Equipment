class RemoveIdentificacionFromTipoElementos < ActiveRecord::Migration
  def change
    remove_column :tipo_elementos, :identificacion, :integer
  end
end

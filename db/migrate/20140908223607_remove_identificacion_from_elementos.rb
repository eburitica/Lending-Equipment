class RemoveIdentificacionFromElementos < ActiveRecord::Migration
  def change
    remove_column :elementos, :identificacion, :integer
  end
end

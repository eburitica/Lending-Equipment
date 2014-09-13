class RemoveConfirmarContrasenaFromRegistros < ActiveRecord::Migration
  def change
    remove_column :registros, :ConfirmarContrasena, :string
  end
end

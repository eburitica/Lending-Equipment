class RemoveContrasenaFromRegistros < ActiveRecord::Migration
  def change
    remove_column :registros, :contrasena, :string
  end
end

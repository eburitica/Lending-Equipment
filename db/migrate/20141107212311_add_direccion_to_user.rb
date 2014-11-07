class AddDireccionToUser < ActiveRecord::Migration
  def change
    add_column :users, :direccion, :integer
  end
end

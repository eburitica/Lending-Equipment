class RemoveDireccionFromUser < ActiveRecord::Migration
  def change
    remove_column :users, :direccion, :integer
  end
end

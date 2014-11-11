class RemoveApellidoFromUser < ActiveRecord::Migration
  def change
    remove_column :users, :apellido, :string
  end
end

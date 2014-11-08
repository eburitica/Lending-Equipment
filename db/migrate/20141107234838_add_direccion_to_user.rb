class AddDireccionToUser < ActiveRecord::Migration
  def change
    add_column :users, :dir, :string
  end
end

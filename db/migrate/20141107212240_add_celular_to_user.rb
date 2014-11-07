class AddCelularToUser < ActiveRecord::Migration
  def change
    add_column :users, :celular, :integer
  end
end

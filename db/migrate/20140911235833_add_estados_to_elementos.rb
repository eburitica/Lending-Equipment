class AddEstadosToElementos < ActiveRecord::Migration
  def change
    add_reference :elementos, :estado, index: true
  end
end

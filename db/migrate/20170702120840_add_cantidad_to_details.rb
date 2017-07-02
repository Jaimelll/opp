class AddCantidadToDetails < ActiveRecord::Migration[5.0]
  def change
    add_column :details, :cantidad, :integer, :default => 1
  end
end

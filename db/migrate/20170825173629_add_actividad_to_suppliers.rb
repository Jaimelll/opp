class AddActividadToSuppliers < ActiveRecord::Migration[5.0]
  def change
    add_column :suppliers, :actividad, :integer
  end
end

class AddNumTrabaToSuppliers < ActiveRecord::Migration[5.0]
  def change
    add_column :suppliers, :num_traba, :integer
  end
end

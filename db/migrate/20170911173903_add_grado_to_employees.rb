class AddGradoToEmployees < ActiveRecord::Migration[5.0]
  def change
    add_column :employees, :grado, :string
    add_column :employees, :cargo, :string
  end
end

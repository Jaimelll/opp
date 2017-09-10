class AddFotoToEmployees < ActiveRecord::Migration[5.0]
  def change
    add_column :employees, :foto, :string
    add_column :employees, :ape_nom, :string
    add_column :employees, :correo_corp, :string
    add_column :employees, :fec_inicon, :date
    add_column :employees, :fec_tercon, :date


  end
end

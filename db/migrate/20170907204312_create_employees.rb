class CreateEmployees < ActiveRecord::Migration[5.0]
  def change
    create_table :employees do |t|
      t.string :dni
      t.string :ape_pat
      t.string :ape_mat
      t.string :nombres
      t.string :direccion
      t.string :telefono
      t.string :correo
      t.date :fec_nacimiento
      t.integer :estado
      t.integer :tip_tra
      t.integer :esta_civil
      t.integer :afp
      t.references :admin_user, foreign_key: true

      t.timestamps
    end
  end
end

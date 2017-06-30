class CreateFormulas < ActiveRecord::Migration[5.0]
  def change
    create_table :formulas do |t|
      t.references :product, foreign_key: true
      t.string :nombre
      t.string :descripcion
      t.string :string
      t.references :admin_user, foreign_key: true
      t.string :descripcion
      t.string :string
      t.integer :orden
      t.string :obs
      t.integer :cantidad
      t.integer :numero
      t.date :pfecha

      t.timestamps
    end
  end
end

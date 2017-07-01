class CreateDetails < ActiveRecord::Migration[5.0]
  def change
    create_table :details do |t|
      t.integer :area
      t.date :pfecha
      t.string :descripcion
      t.references :item, foreign_key: true
      t.references :admin_user, foreign_key: true

      t.timestamps
    end
  end
end

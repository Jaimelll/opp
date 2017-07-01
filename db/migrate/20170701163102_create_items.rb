class CreateItems < ActiveRecord::Migration[5.0]
  def change
    create_table :items do |t|
      t.integer :objetivo
      t.string :actividad
      t.integer :responsable
      t.integer :unidad
      t.integer :programa
      t.date :pfecha
      t.references :admin_user, foreign_key: true

      t.timestamps
    end
  end
end

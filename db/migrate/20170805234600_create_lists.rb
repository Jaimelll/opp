class CreateLists < ActiveRecord::Migration[5.0]
  def change
    create_table :lists do |t|
      t.string :clase
      t.string :descripcion
      t.integer :orden
    

      t.timestamps
    end
  end
end

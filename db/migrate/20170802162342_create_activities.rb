class CreateActivities < ActiveRecord::Migration[5.0]
  def change
    create_table :activities do |t|
      t.date :fechap
      t.integer :estado
      t.date :creada
      t.string :observ
      t.references :sheet, foreign_key: true
      t.references :admin_user, foreign_key: true

      t.timestamps
    end
  end
end

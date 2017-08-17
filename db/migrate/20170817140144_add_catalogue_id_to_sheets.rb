class AddCatalogueIdToSheets < ActiveRecord::Migration[5.0]
  def change
    add_reference :sheets, :catalogue, foreign_key: true
  end
end

class CreateCrammerPlacements < ActiveRecord::Migration[5.0]
  def change
    create_table :crammer_placements do |t|
      t.references :user, null:false, foreign_key: true
      t.references :crammer_class, null:false, foreign_key: true

      t.timestamps
    end
  end
end

class CreateCrammerPlacements < ActiveRecord::Migration[5.0]
  def change
    create_table :crammer_placements do |t|
      t.integer :user_id
      t.integer :crammer_class_id

      t.timestamps
    end
  end
end

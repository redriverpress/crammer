class AddAccessToUsers < ActiveRecord::Migration[5.0]
  def change
    add_column :users, :access, :integer, default: 0, null: false
  end
end

class AddUserIdToFighter < ActiveRecord::Migration[7.0]
  def change
    add_column :fighters, :user_id, :integer
    add_index :fighters, :user_id
  end
end

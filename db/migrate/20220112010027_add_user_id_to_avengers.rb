class AddUserIdToAvengers < ActiveRecord::Migration[6.1]
  def change
    add_column :avengers, :user_id, :integer
    add_index :avengers, :user_id
  end
end

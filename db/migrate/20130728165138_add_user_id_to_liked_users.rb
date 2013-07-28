class AddUserIdToLikedUsers < ActiveRecord::Migration
  def change
    add_column :liked_users, :user_id, :integer
  end
end

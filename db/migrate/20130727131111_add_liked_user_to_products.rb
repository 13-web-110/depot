class AddLikedUserToProducts < ActiveRecord::Migration
  def change
    add_column :products, :liked_user, :string
  end
end

class CreateLikedUsers < ActiveRecord::Migration
  def change
    create_table :liked_users do |t|
      t.string :user_name
      t.references :product

      t.timestamps
    end
    add_index :liked_users, :product_id
  end
end

class CreateRootCategories < ActiveRecord::Migration
  def change
    create_table :root_categories do |t|
      t.string :title
      t.text :description
      t.string :image_url

      t.timestamps
    end
  end
end

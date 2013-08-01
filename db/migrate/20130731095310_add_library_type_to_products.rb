class AddLibraryTypeToProducts < ActiveRecord::Migration
  def change
    add_column :products, :library_type, :string
  end
end

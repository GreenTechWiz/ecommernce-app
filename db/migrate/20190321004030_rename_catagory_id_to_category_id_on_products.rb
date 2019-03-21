class RenameCatagoryIdToCategoryIdOnProducts < ActiveRecord::Migration[5.2]
  def change
    rename_column :products, :catagory_id, :category_id
  end
end

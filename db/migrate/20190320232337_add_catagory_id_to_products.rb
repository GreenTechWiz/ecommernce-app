class AddCatagoryIdToProducts < ActiveRecord::Migration[5.2]
  def change
    #add column to table model products named catagory id with the type integer
    add_column :products, :catagory_id, :integer
    add_column :products, :image_url, :string
  end
end

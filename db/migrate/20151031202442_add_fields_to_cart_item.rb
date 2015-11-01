class AddFieldsToCartItem < ActiveRecord::Migration
  def change
    add_column :cart_items, :description, :text
    add_column :cart_items, :price, :decimal
    add_column :cart_items, :name, :string
    add_column :cart_items, :image, :string
  end
end

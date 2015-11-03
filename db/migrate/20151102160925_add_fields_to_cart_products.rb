class AddFieldsToCartProducts < ActiveRecord::Migration
  def change
    add_column :cart_products, :description, :text
    add_column :cart_products, :price, :decimal
    add_column :cart_products, :name, :string
    add_column :cart_products, :image, :string
  end
end

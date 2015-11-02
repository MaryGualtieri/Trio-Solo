class AddCartReferenceToCartProducts < ActiveRecord::Migration
  def change
    add_reference :cart_products, :cart, index: true, foreign_key: true
  end
end

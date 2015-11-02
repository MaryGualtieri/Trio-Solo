class CreateCartProducts < ActiveRecord::Migration
  def change
    create_table :cart_products do |t|

      t.timestamps null: false
    end
  end
end

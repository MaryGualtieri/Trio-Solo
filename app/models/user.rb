class User < ActiveRecord::Base
	has_one :cart
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
   def total_price
   	totalAmount = 0
   	CartProduct.all.each do |cp|
   			if cp.cart_id == self.id
   				totalAmount += cp.price
   			end
   		end
      return totalAmount
   	end

end

class User < ActiveRecord::Base
	has_one :cart
	has_many :cartItems
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  def buy product
  		self.cartItems.create description: product.description, price: product.price
  end

end

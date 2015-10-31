class User < ActiveRecord::Base
	has_one :cart
	has_many :products
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  def buy product
  		CartItem.create description: product.description, price: product.price
  end

end

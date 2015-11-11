class Product < ActiveRecord::Base
	# has_many :reviews

	def self.search(search)
		where("description LIKE ?", "%#{search}")
	end
end

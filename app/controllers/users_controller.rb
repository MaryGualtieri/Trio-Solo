class UsersController < ApplicationController
	before_filter :ensure_admin!

	def index
	end

	def show
	end

	private

	def ensure_admin!
		unless current_user.admin?
			
			sign_out current_user

			redirect_to root_path

			return false
		end
	end

end

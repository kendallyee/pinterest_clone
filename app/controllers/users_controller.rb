class UsersController < ApplicationController

def new

		# @user = User.new

	end

	def create

		user = User.new(user_params)

		if user.save
      session[:user_id] = user.id

			flash[:notice] = "Account successfully registered!"
			redirect_to '/'

		else

			flash[:alert] = "Unable to register account, check details and retry!"
			redirect_to '/signup'

		end

	end

	def show
	end

	def update
	end

	def destroy
	end

	private

	def user_params

		params.require(:user).permit(:name, :email, :password, :password_confirmation)

	end
end

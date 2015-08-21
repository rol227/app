class UsersController < ApplicationController
	def show
		@user = User.find_by(params[:id])
	end

	def new
		@user = User.new
	end

	def edit
		
	end

	def create
		@user = User.new(user_params)
		if @user.save
			redirect_to root_path
		else
			render 'new'
		end
	end

	def update
		
	end

	def destroy
		
	end

	private
	
	def user_params
		params.require(:user).permit(:email, :password, :password_confirmation)
	end

end
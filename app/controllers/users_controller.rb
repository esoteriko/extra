class UsersController < ApplicationController
	def new
		@user = User.new
	end
	def index
		@user = User.all
	end

	def show 
		@user = User.find(params[:id])
	end

	def edit
		
	end

	

	def create
		@user = User.new(user_params)

		if @user.save
			flash[:succes] = "User create"
		redirect_to @user
	    else
	    	render 'new'
	    end
	end

	def user_params
		params.require(:user).permit(:name, :last_name, :group, :count_number, :user_name, :password, :password_2)
	end
end

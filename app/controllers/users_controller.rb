class UsersController < ApplicationController
	def index
		@users = User.all.decorate
	end

	def show
		@user = User.find(params[:id]).decorate
	end

	def new
		@user = User.new.decorate
	end

	def create
		@user = User.new(user_params)
		if @user.save
			redirect_to users_path
		else
			render :new
		end
	end

	def user_params
		params.require(:user).permit(:name, :surname, :email, :phone, :country, :city, :street)
	end
end
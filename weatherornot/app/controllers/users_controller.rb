class UsersController < ApplicationController

	def new 
		@user = User.new
	end

	def create
		@user = User.new(
			email: params[:email], 
			password: params["password"],
			gender: params["gender"]
			)
		if @user.save
			redirect_to '/login'
		end
	end


end

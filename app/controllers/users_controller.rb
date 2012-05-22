class UsersController < ApplicationController

	def new
		@user = User.new
	end

	def create
		@user = User.new(params[:user])
		if @user.save
			redirect_to login_url
		else
			redirect_to new_user_url, notice: 'All Fields Required'
		end
	end


end
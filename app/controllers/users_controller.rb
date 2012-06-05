class UsersController < ApplicationController

	# before_filter :require_login, :except => [:create, :new]
	# before_filter :require_user, :only => [:show]

	# def require_user
	# 	user = User.find_by_id(params[:id])
	# 	if user.id != session[:login_id]
	# 		redirect_to root_url, notice: "Please Login"
	# 	end
			
	# end	
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

	def show
		 @user = User.find_by_id(params[:id])
	end


end
class SessionsController < ApplicationController

	def new
		#login page
	end

	def create
		user = User.find_by_name(params[:name])
		if user && user.authenticate(params[:password])
			session[:login_id] = user.id
			redirect_to root_url, notice: "Hello, #{user.name}"
		else
			redirect_to root_url, notice: "Login Failed, Please try again"
		end
	end

	def destroy
		session[:login_id] = nil
		flash[:notice] = "Bye"
		redirect_to root_url		
	end

end
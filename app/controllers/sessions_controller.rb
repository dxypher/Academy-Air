class SessionsController < ApplicationController

	def new
		#login page
	end

	def create
		user = User.find_by_name(params[:name])
		if user && user.authenticate(params[:password])
			session[:login_id] = user.id
			redirect_to user_url(user), notice: "Hello, #{user.name}"
		else
			redirect_to root_url, notice: "Login Failed, Please try again"
		end
	end

	def destroy
		reset_session
		flash[:notice] = "Bye"
		redirect_to root_url		
	end

end
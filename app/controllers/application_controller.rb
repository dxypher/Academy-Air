class ApplicationController < ActionController::Base
  protect_from_forgery

  before_filter :require_login

  def require_login
  	# if session[:login_id].nil?
  	# 	redirect_to root_url, notice: "Please Login"
  	# else
  	@user = User.find_by_id(session[:login_id])
  	# end
  end
end

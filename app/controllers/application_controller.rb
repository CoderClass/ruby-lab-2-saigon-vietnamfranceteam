class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
	
	helper_method :current_user, :sign_in?
  
  def current_user

  	if session[:user_id]
  		@current_user = User.find(session[:user_id])
  	end
  end
  def sign_in?
  	if session[:user_id] 
  		return true
  	else
  		return false  
  	end
  end
end

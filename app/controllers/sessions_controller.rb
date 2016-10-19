class SessionsController < ApplicationController
  def create
       if @user = User.find_by(email: params[:email])
         if @user.authenticate(params[:password])
           session[:user_id] = @user.id
         else
           redirect_to new_session_path, notice: 'Incorrect Password Or Email'
         end
       else
         redirect_to new_session_path, notice: 'Incorrect Password Or Email'
       end
   end

  def new
  end
end

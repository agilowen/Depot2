class SessionsController < ApplicationController
  def new
  end

  def create
  	if user = User.authenticate(params[:name], params[:password])
			session[:user_id]=user.id
			redirect_to admin_url
		else
			redirect_to login_url, :alert => "Invalid user/password combo"
		end
	end

  def destroy
  end

end

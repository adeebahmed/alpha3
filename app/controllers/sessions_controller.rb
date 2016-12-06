class SessionsController < ApplicationController
	def create
 	# render text: request.env['omniauth.auth'].to_yaml
 	@user = User.from_omniauth(request.env['omniauth.auth'])
 	session[:id] = @user.id
 	redirect_to users_path
 	end

 	def destroy
 		reset_session
 		redirect_to root_path
 	end
end
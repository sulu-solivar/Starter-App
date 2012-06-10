class DeviseCheckerController < ApplicationController

	def check_devise
		devise_enabled = AuthenticationType.find_by_provider('devise').enable

		if current_user
			flash[:notice] == "Signed in successfully!"
			redirect_to home_path
		else
			if devise_enabled
				redirect_to new_user_session_path
			else
				render :layout => 'login', :action => 'service_login'
			end
		end

	end

	def service_login
	end

end
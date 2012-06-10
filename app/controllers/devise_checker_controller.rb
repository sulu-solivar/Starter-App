class DeviseCheckerController < ApplicationController

	def check_devise
		devise_enabled = AuthenticationType.find_by_provider('devise').enable
		if devise_enabled
			redirect_to new_user_registration_path
		else
		 	render :layout => 'login', :action => 'service_login'
		end
	end

	def service_login
	end

end
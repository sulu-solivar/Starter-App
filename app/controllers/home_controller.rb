class HomeController < ApplicationController
	
	before_filter :authenticate_user!

	def index
		@welcome = "This is starter Application for Solivar Technologies"
	end

end
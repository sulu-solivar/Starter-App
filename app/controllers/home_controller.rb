class HomeController < ApplicationController
	
	before_filter :authenticate_user!

	def index
		@home_page = "This is home page of starter Application"
	end

	def about
		@about_page = "This is about page of starter Application"
	end



end
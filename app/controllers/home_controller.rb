class HomeController < ApplicationController
	
	before_filter :authenticate_user!

	def index
		@home_page = "This is home page of Timesheet Application"
	end

	def about
		@about_page = "This is about page of Timesheet Application"
	end



end
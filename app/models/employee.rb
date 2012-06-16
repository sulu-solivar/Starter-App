class Employee < ActiveRecord::Base
	 validates :name, :task, :billinghrs, :date , presence: true  
end

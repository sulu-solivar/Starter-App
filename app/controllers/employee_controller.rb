class EmployeeController < ApplicationController
  def new
    @employee = Employee.new
  end

  def show

    if current_user.Manager
      if params[:id] == nil
        @employees = current_user.employees.all
      elsif params[:id] == "0"
        @employees = Employee.all
      else
        user = User.find(params[:id])   
        @employees = user.employees.all
      end

    else
      @employees = current_user.employees.all
    end
  end

  def edit
    @employee = Employee.find(params[:id])
  end

  def update
    @employee = Employee.find(params[:id])
    #@employee = Employee.find(params[:id])
    if @employee.update_attributes(params[:employee])
      flash[:success] = "Timesheet updated"
      redirect_to employee_index_path
    else
      redirect_to employee_index_path
    end
	end

	def index

    if current_user.Manager

      if params[:id] == nil
        @employees = current_user.employees.all
      elsif params[:id] = 0
        @employees = Employee.all
      else   
        @employees = User.find(params[:id]).employees.all
      end

    else
      @employees = current_user.employees.all
    end

	end

	def home   
    @employee = Employee.first
	end

	def create
    @employee = current_user.employees.build(params[:employee])
    #@employee = Employee.new(params[:employee])
    if @employee.save
      flash[:success] = "Completed successfully!"
      redirect_to employee_index_path
    else
    	redirect_to new_employee_path	
    end    
  end

  def destroy
    @employee = Employee.find(params[:id])
    if @employee.destroy
      flash[:success] = "deleted successfully"
      redirect_to employee_index_path
    else
      redirect_to employee_index_path
    end
  end

end
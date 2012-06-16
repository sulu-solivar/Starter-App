class AddUserIdToEmployee < ActiveRecord::Migration
  def change
    add_column :employees, :UserId, :integer

  end
end

class AddMangerToUsers < ActiveRecord::Migration
  def change
    add_column :users, :Manager, :boolean, default: false

  end
end

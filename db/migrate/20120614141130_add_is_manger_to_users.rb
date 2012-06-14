class AddIsMangerToUsers < ActiveRecord::Migration
  def change
    add_column :users, :IsManager, :string

  end
end

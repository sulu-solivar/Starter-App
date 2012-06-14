class RemoveIsMangerToUsers < ActiveRecord::Migration
  def up
    remove_column :users, :IsManager
      end

  def down
    add_column :users, :IsManager, :string
  end
end

class CreateEmployees < ActiveRecord::Migration
  def change
    create_table :employees do |t|
      t.string :name
      t.string :task
      t.integer :billinghrs
      t.datetime :date

      t.timestamps
    end
  end
end

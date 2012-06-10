class CreateAuthenticationTypes < ActiveRecord::Migration
  def change
    create_table :authentication_types do |t|
      t.string :provider
      t.boolean :enable

      t.timestamps
    end
  end
end
